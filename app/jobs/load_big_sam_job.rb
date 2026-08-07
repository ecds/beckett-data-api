# frozen_string_literal: true

require 'roo'
require 'action_view'

class LoadBigSamJob < ApplicationJob
  include ActionView::Helpers::SanitizeHelper
  queue_as :default

  # Raised to abandon a single row (e.g. an unparseable date) without treating it as a
  # failure worth surfacing the way an unexpected error is.
  class SkipRow < StandardError; end

  ORIGIN_FIELDS = %i[
    reg_place_written reg_place_written_city reg_place_written_country reg_place_written_second_city
  ].freeze

  DESTINATION_FIELDS = %i[reg_place_sent reg_placesent_city reg_placesent_country].freeze

  # Only the first slot carries a Collection URL in the spreadsheet (there's a single
  # "Collection URL" column, not one per repository slot).
  REPOSITORY_SLOTS = [
    { repository: :first_repository, public: :first_public, format: :first_format,
      collection: :first_collection, placement: 'premiere', set_collection_url: true },
    { repository: :second_repository, public: :second_public, format: :second_format,
      collection: :second_collection, placement: 'deuxieme' },
    { repository: :third_repository, public: :third_public, format: :third_format,
      collection: :third_collection, placement: 'troisieme' }
  ].freeze

  RECORD_COUNT_MODELS = {
    letters: Letter, entities: Entity, repositories: Repository, collections: Collection,
    letter_owners: LetterOwner, file_folders: FileFolder, letter_publishers: LetterPublisher,
    languages: Language
  }.freeze

  def perform(*args)
    FileUtils.touch('big_sam_loading') unless ENV['RAILS_ENV'] == 'test'
    logger.debug 'starting big sam load'

    before = record_counts
    rows = rows_from(args.first)
    load_letters(rows)
    report = build_report(rows.size, before)

    BigSam.last.destroy

    send_reports(report)
  end

  def build_report(total, before)
    {
      total:,
      loaded: total - @row_skipped.size - @row_errors.size,
      skipped: @row_skipped,
      errors: @row_errors,
      created: record_counts.to_h {|model, count| [model, count - before[model]] }
    }
  end

  def send_reports(report)
    BigSamMailer.developer_report(report).deliver_later
    BigSamMailer.owner_report(report).deliver_later
  end

  # Runs the exact same row-by-row logic as perform, but rolls back every database
  # write at the end and never touches Elasticsearch, so a spreadsheet can be sanity
  # checked before anyone commits to a real upload. Does not touch the BigSam upload
  # record/file. Safe to call directly (LoadBigSamJob.new.dry_run(big_sam)) - it
  # doesn't go through ActiveJob's perform/enqueue path.
  def dry_run(big_sam)
    rows = rows_from(big_sam)
    @dry_run = true
    before = record_counts

    Thread.current[:big_sam_dry_run] = true
    Searchkick.callbacks(false) do
      # requires_new: true forces a real savepoint/rollback here even if dry_run is
      # ever called from within another open transaction (e.g. under RSpec's
      # transactional fixtures), instead of silently deferring the rollback to
      # whatever transaction happens to be outermost.
      ActiveRecord::Base.transaction(requires_new: true) do
        load_letters(rows)
        @dry_run_creates = record_counts.to_h {|model, count| [model, count - before[model]] }
        raise ActiveRecord::Rollback
      end
    end

    { total: rows.size, errors: @row_errors, skipped: @row_skipped, would_create: @dry_run_creates }
  ensure
    Thread.current[:big_sam_dry_run] = nil
  end

  def rows_from(big_sam)
    x = Roo::Spreadsheet.open(big_sam.local_path, extension: :xlsx)
    sheet = x.sheet(0)
    headers = sheet.row(1).map {|h| h.parameterize.underscore }
    rows = []
    sheet.each_with_index do |row, idx|
      next if idx.zero?

      rows.push([headers, row].transpose.to_h.symbolize_keys)
    end
    rows
  end

  def record_counts
    RECORD_COUNT_MODELS.transform_values(&:count)
  end

  def load_letters(rows)
    @row_errors = []
    @row_skipped = []

    rows.each {|row| process_row(row) }

    report_results(rows.size)
  end

  def report_results(total)
    logger.info do
      "#{Time.zone.now} ALL DONE. #{total} rows: " \
        "#{total - @row_skipped.size - @row_errors.size} loaded, " \
        "#{@row_skipped.size} excluded/skipped, #{@row_errors.size} failed."
    end

    return if @row_errors.empty?

    details = @row_errors.map {|e| "  row #{e[:id]} (#{e[:code]}): #{e[:error]}" }.join("\n")
    logger.error("Big Sam load had #{@row_errors.size} row failures:\n#{details}")
  end

  def process_row(row)
    letter = get_letter(row)

    ActiveRecord::Base.transaction(requires_new: true) { process_letter(row, letter) }
  rescue SkipRow => e
    @row_skipped << { id: row[:id], code: row[:code], reason: e.message }
  rescue StandardError => e
    @row_errors << { id: row[:id], code: row[:code], error: "#{e.class}: #{e.message}" }
    logger.error("Big Sam row #{row[:id]} (#{row[:code]}) failed: #{e.class}: #{e.message}")
  end

  def process_letter(row, letter)
    set_letter_attributes(row, letter)
    clear_associations(letter)
    assign_date(row, letter)
    assign_origins(row, letter)
    assign_recipients(row, letter)
    assign_destinations(row, letter)
    REPOSITORY_SLOTS.each {|slot| assign_repository_slot(row, letter, slot) }
    assign_volume(row, letter)
    assign_publisher(row, letter)
    assign_senders(row, letter)
    assign_languages(row, letter)

    # letter_repositories were saved directly (not through the letter.repositories
    # association), so the cached association must be refreshed before save or
    # check_published computes off a stale, empty collection.
    letter.repositories.reload
    letter.save!
  end

  def set_letter_attributes(row, letter)
    letter.attributes = {
      code: row[:code],
      legacy_pk: row[:id],
      addressed_to: row[:addressed_to_actual],
      addressed_from: row[:addressed_from_actual],
      physical_desc: row[:physdes],
      physical_detail: row[:phys_descr_detail],
      physical_notes: row[:physdes_notes],
      repository_info: row[:repository_information],
      postcard_image: row[:postcard_image],
      leaves: row[:leaves].to_i,
      sides: row[:sides],
      postmark: row[:postmark_actual],
      notes: row[:additional],
      letter_owner: find_or_create_by_label(LetterOwner, row[:ownerrights]),
      file_folder: find_or_create_by_label(FileFolder, row[:file]),
      typed: row[:autograph_or_typed] == 'T',
      signed: row[:initialed_or_signed] == 'S',
      envelope: row[:envelope] == 'E',
      verified: row[:verified].to_s.strip.downcase == 'y'
    }
  end

  def clear_associations(letter)
    letter.origins.clear
    letter.destinations.clear
    letter.recipients.clear
    letter.repositories.clear
    letter.senders.clear
    letter.collections.clear
    letter.languages.clear
  end

  def assign_date(row, letter)
    row = fix_date(row)
    letter.date = (DateTime.new(row[:year], row[:month], row[:day]) if row[:year] != 0)
  rescue ArgumentError, NoMethodError => e
    raise SkipRow, "bad date: #{e.message}"
  end

  def assign_origins(row, letter)
    ORIGIN_FIELDS.each do |field|
      value = row[field]
      next if value.blank?

      place = get_entity(label: value, type: 'place')
      letter.origins << place unless letter.origins.include?(place)
    rescue ActiveRecord::RecordInvalid,
           Elasticsearch::Transport::Transport::Errors::BadRequest,
           Elasticsearch::Transport::Transport::Errors::NotFound
    end
  end

  def assign_recipients(row, letter)
    row[:reg_recipient]&.split(';')&.each do |recipient|
      recipient = recipient.strip.titleize
      entity = Entity.find_by(label: recipient)
      entity = get_person(recipient) if entity.nil?
      entity = get_entity(label: recipient, type: 'organization', return_nil: true) if entity.nil? && !recipient.empty?
      entity = Entity.create(label: recipient) if entity.nil? && !recipient.empty?
      LetterRecipient.find_or_create_by(letter:, entity:)
    rescue ActiveRecord::RecordInvalid,
           Elasticsearch::Transport::Transport::Errors::BadRequest,
           Elasticsearch::Transport::Transport::Errors::NotFound
      # It happens
    end
  end

  def assign_destinations(row, letter)
    DESTINATION_FIELDS.each do |field|
      value = row[field]
      next if value.blank?

      place = get_entity(label: value, type: 'place')
      letter.destinations << place unless letter.destinations.include?(place)
    rescue ActiveRecord::RecordInvalid,
           Elasticsearch::Transport::Transport::Errors::BadRequest,
           Elasticsearch::Transport::Transport::Errors::NotFound
    end
  end

  def assign_repository_slot(row, letter, slot)
    return if row[slot[:repository]].blank?

    repository = find_or_initialize_by_label(Repository, row[slot[:repository]])

    if repository.new_record? && row[slot[:public]]
      repository.published = row[slot[:public]].to_s.strip.downcase == 'public'
    end

    repository.save

    repository.format = row[slot[:format]]
    repository.american = row[:euro_or_am].downcase == 'american' if row[:euro_or_am]

    collection = nil
    begin
      if row[slot[:collection]].present?
        collection = find_or_create_by_label(Collection, row[slot[:collection]])
        collection.update(url: row[:collection_url]) if slot[:set_collection_url]

        repository.collections << collection unless repository.collections.include?(collection)
        letter.collections << collection unless letter.collections.include?(collection)
      end

      repository.save

      letter_repository = LetterRepository.find_or_initialize_by(letter:, repository:)
      letter_repository.save
      letter_repository.update(collection:, placement: slot[:placement], format: row[slot[:format]])
    rescue ActiveRecord::RecordInvalid,
           Elasticsearch::Transport::Transport::Errors::BadRequest,
           Elasticsearch::Transport::Transport::Errors::NotFound
      # It happens
    end
  end

  def assign_volume(row, letter)
    return unless row[:volumeinfo]

    letter.volume = 0
    letter.volume = 1 if row[:volumeinfo].include?('1929-1940')
    letter.volume = 2 if row[:volumeinfo].include?('1941-1956')
    letter.volume = 3 if row[:volumeinfo].include?('1957-1965')
    letter.volume = 4 if row[:volumeinfo].include?('1966-1989')
    parts = row[:volumeinfo].split(',')
    letter.volume_pages = ActionController::Base.helpers.strip_tags(parts[2].strip) if parts.length == 3
  end

  def assign_publisher(row, letter)
    return if row[:placeprevpubl].blank?

    letter.letter_publisher = find_or_create_by_label(LetterPublisher, row[:placeprevpubl])
  end

  def assign_senders(row, letter)
    row[:sender]&.split(';')&.each do |sender|
      entity = get_person(sender)
      letter.senders << entity unless letter.senders.include?(entity)
    rescue ActiveRecord::RecordInvalid,
           Elasticsearch::Transport::Transport::Errors::BadRequest,
           Elasticsearch::Transport::Transport::Errors::NotFound
    end
  end

  def assign_languages(row, letter)
    row[:primarylang]&.split(';')&.each do |language|
      lang = Language.find_or_create_by(label: language.downcase)
      letter.languages << lang unless letter.languages.include?(lang)
    rescue ActiveRecord::RecordInvalid,
           Elasticsearch::Transport::Transport::Errors::BadRequest,
           Elasticsearch::Transport::Transport::Errors::NotFound
    end
  end

  def get_letter(row)
    if row[:exclude].to_s.strip.downcase == 'y'
      letter = Letter.find_by(legacy_pk: row[:id])
      # In a dry run nothing should actually be destroyed - remove_published's
      # Elasticsearch delete isn't gated by the enclosing transaction like a normal
      # ActiveRecord write is, so it would delete a real search document.
      letter&.destroy unless @dry_run
      raise SkipRow, 'excluded'
    end

    # A blank ID isn't a distinct row - find_or_create_by(legacy_pk: nil) would match
    # *every* other blank-ID row and silently overwrite whichever one loaded first.
    raise SkipRow, 'missing id' if row[:id].blank?

    Letter.find_or_create_by(legacy_pk: row[:id])
  end

  def normalize_label(value)
    value.to_s.strip.squeeze(' ')
  end

  def find_or_create_by_label(klass, label)
    clean = normalize_label(label)
    return nil if clean.blank?

    klass.find_by('lower(label) = ?', clean.downcase) || klass.create(label: clean)
  end

  def find_or_initialize_by_label(klass, label)
    clean = normalize_label(label)
    return nil if clean.blank?

    klass.find_by('lower(label) = ?', clean.downcase) || klass.new(label: clean)
  end

  def get_entity(label: nil, type: nil, return_nil: false)
    logger.error("Get Entity with label: #{label} of type #{type}")
    label = label.strip.gsub(/[\[!@%&?"\]]/, '').titleize
    entity = Entity.public_send(type).find_by('lower(label) = ?', label.downcase)

    return nil if entity.nil? && return_nil

    if label.empty?
      entity = Entity.find_or_create_by(label: 'unknown', e_type: 'generic')
    elsif entity.nil?
      entity = Entity.find_or_create_by(label:, e_type: type)
    end

    logger.debug("Found or created entity #{entity.label}")
    entity
  end

  def get_person(name)
    entity = nil
    names = Namae.parse(name).first
    if names&.given && names&.family
      names.family = "Van #{names.family}" if names.particle&.downcase == 'van'
      names.family = "von #{names.family}" if names.particle&.downcase == 'von'
      names = mc_or_mac?(names)
      names = o?(names)
      entity = Entity.find_by(first_name: names.given, last_name: names.family)
    end

    if entity.nil?
      entity = Entity.find_or_create_by(first_name: names.given, last_name: names.family,
                                        e_type: 'person')
    end
    logger.debug "Found person #{entity.label} from #{name}"
    entity
  end

  def fix_date(row)
    row[:day] = '1' if row[:day] == '0'
    row[:month] = '1' if row[:month] == '0'
    row[:year] = '99' if row[:year] == '0'
    row[:day] = row[:day].gsub(/[\[!@%&?"\]]/, '').to_i if row[:day].is_a?(String)
    row[:month] = row[:month].gsub(/[\[!@%&?"\]]/, '').to_i if row[:month].is_a?(String)
    row[:year] = "19#{row[:year]}".gsub(/[\[!@%&?"\]]/, '').to_i if row[:year].is_a?(String)
    row[:year] = row[:year] + 1900 if row[:year].to_s.size == 2

    row
  end

  def mc_or_mac?(names)
    return names if names.family.start_with?(/Mc[A-Z]/) || names.family.start_with?(/Mac[A-Z]/)

    if names.family.start_with?('Mac ') || names.family.start_with?('Mc ')
      names.family = names.family.split.map(&:titleize).join
      return names
    end

    if names.given.ends_with?(' Mac') || names.given.ends_with?(' Mc')
      parts = names.given.split
      names.family = "#{parts.last}#{names.family}"
      names.given = parts.first
      return names
    end

    return names unless names.family.downcase.start_with?('mac') || names.family.downcase.start_with?('mc')

    names.family.gsub!(/M.*c\K.*/, &:titleize)
    names
  end

  def o?(names)
    if names.family.starts_with?("O'")
      names.family.gsub!(/'\K.*/, &:titleize)
      return names
    end

    if names.given.include?("O'")
      names.given.gsub!(/'\K.*/, &:titleize)
      return names
    end

    names
  end
end
