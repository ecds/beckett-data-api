# frozen_string_literal: true

# rubocop:disable Metrics/BlockLength, Metrics/MethodLength

require 'roo'

namespace :big_sam do
  task :letters_from_csv, [:csv] => :environment do |_t, args|
    options = Rack::Utils.parse_nested_query(args[:csv])

    Rails.logger.info { "#{Time.zone.now} Starting BigSam import" }

    x = Roo::Spreadsheet.open(options['csv'])
    sheet = x.sheet(0)
    headers = sheet.row(1).map {|h| h.parameterize.underscore }
    rows = []
    sheet.each_with_index do |row, idx|
      next if idx.zero?

      rows.push([headers, row].transpose.to_h.symbolize_keys)
    end

    rows.each do |row|
      row[:day] = '1' if row[:day] == '0'
      row[:month] = '1' if row[:month] == '0'
      row[:year] = '99' if row[:year] == '0'

      row[:day] = row[:day].gsub(/[\[!@%&?"\]]/, '').to_i if row[:day].is_a?(String)
      row[:month] = row[:month].gsub(/[\[!@%&?"\]]/, '').to_i if row[:month].is_a?(String)
      row[:year] = "19#{row[:year]}".gsub(/[\[!@%&?"\]]/, '').to_i if row[:year].is_a?(String)

      row[:year] = row[:year] + 1900 if row[:year].to_s.size == 2

      # existing = Letter.find_by(legacy_pk: row['ID'])
      # next if existing

      letter = Letter.find_or_create_by(legacy_pk: row[:id])

      if row[:exclude] == 'y' && letter.present?
        letter.delete
        next
      end

      next if row[:exclude] == 'y'

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
        leaves: row[:leves].to_i,
        sides: row[:sides],
        postmark: row[:postmark_actual],
        notes: row[:dditional],
        letter_owner: LetterOwner.find_or_create_by(label: row[:ownerrights]),
        file_folder: FileFolder.find_or_create_by(label: row[:file]),
        typed: row[:autograph_or_typed] == 'T',
        signed: row[:initialed_or_signed] == 'S',
        envelope: row[:envelope] == 'E',
        verified: row[:verified] == 'Y'
      }

      letter.origins.clear
      letter.destinations.clear
      letter.recipients.clear
      letter.repositories.clear
      letter.senders.clear
      letter.collections.clear

      begin
        letter.date = (DateTime.new(row[:year], row[:month], row[:day]) if row[:year] != 0)
      rescue ArgumentError, NoMethodError
        # 'Bad date'
        next
      end

      if row[:reg_place_written]
        begin
          from = get_entity(row[:reg_place_written], 'place')
          letter.origins << from
        rescue ActiveRecord::RecordInvalid,
               Elasticsearch::Transport::Transport::Errors::BadRequest,
               Elasticsearch::Transport::Transport::Errors::NotFound
        end
      end

      if row[:reg_place_written_city]
        begin
          place = get_entity(row[:reg_place_written_city], 'place')
          letter.origins << place unless letter.origins.include?(place)
        rescue ActiveRecord::RecordInvalid, Elasticsearch::Transport::Transport::Errors::BadRequest,
               Elasticsearch::Transport::Transport::Errors::NotFound
        end
      end

      if row[:reg_place_written_country]
        begin
          place = get_entity(row[:reg_place_written_country], 'place')
          letter.origins << place unless letter.origins.include?(place)
        rescue ActiveRecord::RecordInvalid, Elasticsearch::Transport::Transport::Errors::BadRequest,
               Elasticsearch::Transport::Transport::Errors::NotFound
        end
      end

      if row[:reg_place_written_second_city]
        begin
          place = get_entity(row[:reg_place_written_second_city], 'place')
          letter.origins << place unless letter.origins.include?(place)
        rescue ActiveRecord::RecordInvalid, Elasticsearch::Transport::Transport::Errors::BadRequest,
               Elasticsearch::Transport::Transport::Errors::NotFound
        end
      end

      row[:reg_recipient]&.split(';')&.each do |recipient|
        entity = Entity.organization.find_by(label: recipient.strip.titleize)
        entity = get_entity(recipient, 'person') if entity.nil?
        LetterRecipient.find_or_create_by(letter:, entity:)
      rescue ActiveRecord::RecordInvalid,
             Elasticsearch::Transport::Transport::Errors::BadRequest,
             Elasticsearch::Transport::Transport::Errors::NotFound
        # It happens
      end

      if row[:reg_placesent_sent]
        begin
          destination = get_entity(row[:reg_placesent_sent], 'place')
          letter.destinations << destination
        rescue ActiveRecord::RecordInvalid, Elasticsearch::Transport::Transport::Errors::BadRequest,
               Elasticsearch::Transport::Transport::Errors::NotFound
        end
      end

      if row[:reg_placesent_city]
        begin
          entity = get_entity(row[:reg_placesent_city], 'place')
          letter.destinations << entity
        rescue ActiveRecord::RecordInvalid, Elasticsearch::Transport::Transport::Errors::BadRequest,
               Elasticsearch::Transport::Transport::Errors::NotFound
        end
      end

      if row[:reg_placesent_country]
        begin
          entity = get_entity(row[:reg_placesent_country], 'place')
          letter.destinations << entity
        rescue ActiveRecord::RecordInvalid, Elasticsearch::Transport::Transport::Errors::BadRequest,
               Elasticsearch::Transport::Transport::Errors::NotFound
        end
      end

      if row[:first_repository]
        repo = Repository.find_or_create_by(label: row[:first_repository])
        repo.format = row[:first_format]
        repo.american = row[:euro_or_am].downcase == 'american' if row[:euro_or_am]
        repo.public = row[:first_public].downcase == 'public' if row[:first_public]
        begin
          if row[:first_collection]
            collection = Collection.find_or_create_by(label: row[:first_collection])
            collection.url = row[:collection_url] if row[:collection_url]
            collection.save

            repo.collections << collection unless repo.collections.include?(collection)

            letter.collections << collection unless letter.collections.include?(collection)

          end
          repo.save

          letter.repositories << repo unless letter.repositories.include?(repo)
        rescue ActiveRecord::RecordInvalid,
               Elasticsearch::Transport::Transport::Errors::BadRequest,
               Elasticsearch::Transport::Transport::Errors::NotFound
          # It happens
        end
      end

      if row[:second_repository]
        repo = Repository.find_or_create_by(label: row[:second_repository])
        repo.format = row[:second_format]
        repo.public = row[:second_public].downcase == 'public' if row[:second_public]
        begin
          if row[:second_collection]
            collection = Collection.find_or_create_by(label: row[:second_collection])

            repo.collections << collection unless repo.collections.include?(collection)

            letter.collections << collection unless letter.collections.include?(collection)
          end

          repo.save

          letter.repositories << repo unless letter.repositories.include?(repo)
        rescue ActiveRecord::RecordInvalid,
               Elasticsearch::Transport::Transport::Errors::BadRequest,
               Elasticsearch::Transport::Transport::Errors::NotFound
          # It happens
        end
      end

      letter.letter_publisher = LetterPublisher.find_or_create_by(label: row[:placeprevpubl]) if row[:placeprevpubl]

      row[:sender]&.split(';')&.each do |sender|
        entity = get_entity(sender, 'person')
        letter.senders << entity unless letter.senders.include?(entity)
      rescue ActiveRecord::RecordInvalid,
             Elasticsearch::Transport::Transport::Errors::BadRequest,
             Elasticsearch::Transport::Transport::Errors::NotFound
      end

      letter.language = row[:primarylang].downcase.strip if row[:primarylang]

      letter.typed = row[:autograph_or_typed] == 'T'

      letter.signed = row[:initialed_or_signed] == 'S'

      letter.envelope = row[:envelope] == 'E'

      letter.save
    end

    Rails.logger.info { "#{Time.zone.now} ALL DONE" }
  end

  def get_entity(label, type)
    label = label.downcase.strip.gsub(/[\[!@%&?"\]]/, '').titleize
    entity = Entity.public_send(type)
                   .where(label:)
                   .or(
                     Entity.public_send(type)
                           .where('? = ANY (alternate_spellings)', label)
                   ).first

    if type == 'person'
      names = Namae.parse label.strip.gsub(/[\[!@%&?"\]]/, '').titleize
      if names&.first&.given && names&.first&.family
        entity = Entity.find_or_create_by(first_name: names.first.given, last_name: names.first.family)
      end
    end

    if entity.nil?
      entity = Entity.find_or_create_by(label:, e_type: type)

      if entity.legacy_pk == 99_999_999
        entity.legacy_pk = 88_888_888
        entity.save
      end
    end

    Rails.logger.debug { entity.label }
    entity
  end
end

# rubocop:enable Metrics/BlockLength, Metrics/MethodLength
