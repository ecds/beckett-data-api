# frozen_string_literal: true

require 'action_view'

class Entity < ApplicationRecord
  include Searchable
  include EntityCommon

  before_save :check_published, :remove_blank_values, :add_full_stops, :remove_div, :concat_label, :to_plain_text
  after_destroy :remove_published
  after_commit :reindex_published

  has_many :mentions, dependent: :destroy
  has_many :letters, -> { order('letters.date') }, through: :mentions, source: :letter

  has_many :letter_destinations, dependent: :destroy
  has_many :letters_sent_to, -> { order('letters.date') }, through: :letter_destinations, source: :letter

  has_many :letter_senders, dependent: :destroy
  has_many :letters_sent, -> { order('letters.date') }, through: :letter_senders, source: :letter

  has_many :letter_origins, dependent: :destroy
  has_many :letters_sent_from, -> { order('letters.date') }, through: :letter_origins, source: :letter

  has_many :letter_recipients, dependent: :destroy
  has_many :letters_received, -> { order('letters.date') }, through: :letter_recipients, source: :letter

  has_many :media, dependent: :destroy

  scope :deletable, lambda {
    where(
      legacy_pk: [88_888_888, 99_999_999, nil]
    ).where.missing(
      :mentions,
      :letter_destinations,
      :letter_origins,
      :letter_senders,
      :letter_recipients
    )
  }

  scope :published, -> { where(published: true) }

  def search_data
    attributes = {}
    allowed_attributes.each {|attribute| attributes[attribute] = public_send(attribute) }
    attributes[:alternate_spellings] = alternate_spellings.join(' ') if alternate_spellings?
    attributes[:alternate_names] = alternate_names.join(' ') if alternate_names?
    {
      label:,
      clean_label:,
      description:,
      clean_description:,
      e_type:,
      id_path: url_path,
      short_display:,
      full_display:,
      published:
    }.merge(attributes)
  end

  def all_letters
    letters +
    letters_sent_to +
    letters_sent +
    letters_sent_from +
    letters_received
  end

  def published_letters
    letters.published +
    letters_sent_to.published +
    letters_sent.published +
    letters_sent_from.published +
    letters_received.published
  end

  # TODO: What to do about bad dates?
  def published_letters_hash
    published_letters.reject {|l| l.date.nil? }.uniq.sort_by(&:date).map {|letter|
      {
        id: letter.id,
        date: letter.date.strftime('%d %B %Y'),
        recipients: letter.recipients.map do |recipient|
          {
            id: recipient.id,
            name: recipient.label
          }
        end
      }
    }
  end

  private

  # rubocop:disable Metrics/PerceivedComplexity, Metrics/CyclomaticComplexity

  def concat_label
    case e_type
    when 'attendance'
      self.label = if event_types && description
                     "#{event_types.map(&:titleize).join(',')}, #{description}"
                   else
                     "#{event_types&.map(&:titleize)&.join(',')} #{description}".strip
                   end
    when 'person'
      if label && (last_name.nil? && first_name.nil?)
        names = Namae.parse label
        if names&.first&.given && names&.first&.family
          self.first_name = names.first.given
          self.last_name = names.first.family
        end
      end

      self.label = [last_name, first_name].compact.join(', ') if last_name || first_name
      self.life_dates = nil if life_dates == 'nd'
      self.life_dates = life_dates.gsub(/[()]/, '') if life_dates
    end
  end

  # rubocop:enable Metrics/PerceivedComplexity, Metrics/CyclomaticComplexity

  def remove_div
    allowed_attributes.each do |attribute|
      next unless self[attribute].is_a? String

      fragment = Nokogiri::HTML.fragment public_send(attribute)
      next unless fragment.elements.first&.name == 'div'

      self[attribute] = fragment.children.first.inner_html.gsub('em>', 'i>')

      self[attribute] = nil if self[attribute].blank?
    end
  end

  def add_full_stops
    fields = %i[
      date_str
      description
      publication_information
      translated_title
    ]

    fields.each do |field|
      next unless allowed_attributes.include? field

      next if self[field].nil?

      next if self[field].blank?

      next unless missing_full_stop?(self[field])

      self[field] = "#{self[field]}."
    end
  end

  def missing_full_stop?(text)
    text.last.match(/\.|!|\?/).nil?
  end

  def to_plain_text
    rich_text_fields = %i[label description]
    list_fields = %i[alternate_names alternate_spellings authors cast personnel translators]

    rich_text_fields.each do |field|
      next if self[field].nil?

      self["#{field}_plain"] = scrub_text(self[field])
    end

    lists = list_fields.map {|field| scrub_text(self[field].join(' ')) unless self[field].nil? }.join(' ')

    self.lists_plain = lists.strip.squeeze(' ') if lists.present?
  end

  def scrub_text(text)
    strip_tags(text).gsub(/[^0-9A-Za-z\s]/, '')
  end

  def check_published
    self.published = published_letters_hash.present?
  end

  def remove_blank_values
    allowed_attributes.each do |attribute|
      next if self[attribute].is_a? FalseClass

      if self[attribute].is_a? Array
        self[attribute].compact_blank!
      elsif self[attribute].blank?
        self[attribute] = nil
      end
    end
  end

  def reindex_published
    if published
      published_entity = PublishedEntity.find(id)
      published_entity&.reindex
      PublishedEntity.reindex if ENV['RAILS_ENV'] == 'test'
    else
      remove_published
    end
  end

  # Called after destory or when entity might have been unpublished
  def remove_published
    PublishedEntity.searchkick_index.remove(self)
  rescue NoMethodError
  end
end
