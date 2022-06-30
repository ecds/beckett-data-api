# frozen_string_literal: true

class Entity < ApplicationRecord
  include Searchable
  serialize :properties, HashWithIndifferentAccess

  before_save :ensure_json

  has_many :mentions, dependent: :destroy
  has_many :letters, through: :mentions, source: :letter

  has_many :letter_destinations, dependent: :destroy
  has_many :letters_sent_to, through: :letter_destinations, source: :letter

  has_many :letter_senders, dependent: :destroy
  has_many :letters_sent, through: :letter_senders, source: :letter

  has_many :letter_origins, dependent: :destroy
  has_many :letters_sent_from, through: :letter_origins, source: :letter

  has_many :letter_recipients, dependent: :destroy
  has_many :letters_received, through: :letter_recipients, source: :letter

  enum e_type: {
    person: 0,
    organization: 1,
    place: 2,
    production: 3,
    writing: 4,
    translating: 5,
    reading: 6,
    attendance: 7,
    music: 8,
    publication: 9,
    public_event: 10,
    work_of_art: 11
  }

  def all_letters
    letters +
    letters_sent_to +
    letters_sent +
    letters_sent_from +
    letters_received
  end

  def public_letters
    letters._public +
    letters_sent_to._public +
    letters_sent._public +
    letters_sent_from._public +
    letters_received._public
  end

  def public_letters_hash
    # public_letters.reject! {|l| l.recipients.count.zero? }
    public_letters.uniq.sort_by(&:date).map {|letter|
      {
        id: letter.id,
        date: letter.date,
        recipients: letter.recipients.map do |recipient|
          {
            id: recipient.id,
            name: recipient.label
          }
        end
      }
    }
  end

  # rubocop:disable Metrics/MethodLength, Metrics/CyclomaticComplexity, Metrics/AbcSize, Layout/LineLength
  def short_display
    inner_html = case e_type
                 when 'attendance'
                   [properties[:eventType], label, properties[:placeDate]].compact.join(', ')
                 when 'music'
                   alts = properties[:alternativeTitles].empty? ? nil : "[#{properties[:alternativeTitles].join(', ')}]"
                   main_label = [properties[:composer], label].compact.join(', ')
                   alts.nil? ? main_label : "#{main_label} #{alts}"
                 when 'person'
                   ["#{label} #{properties[:lifeDates]}", description].compact.join('. ')
                 when 'place'
                   [label, description].compact.join(', ')
                 when 'production'
                   main_label = properties[:director].nil? ? label : "#{label}, dir. #{properties[:director]}"
                   [main_label, properties[:theater], properties[:city], properties[:date]].compact.join(', ')
                 when 'public_event'
                   properties[:date].nil? ? label : "#{label} (#{properties[:date]})"
                 when 'publication'
                   main_label = [properties[:author], label, properties[:translator]].compact.join(', ')
                   properties[:publication_information].nil? ? main_label : "#{main_label} #{properties[:publication_information]}"
                 when 'reading'
                   [properties[:authors].join(', '), label, properties[:publication]].compact.join(', ')
                 when 'translating'
                   main_label = [properties[:author], label]
                   into = properties[:translatedInto].nil? ? nil : "Translated into #{properties[:translatedInto]}"
                   by = properties[:translator].nil? ? nil : "by #{properties[:translator]}"
                   extra = [into, by].compact.join(' ')
                   main_label.push(extra) unless extra.empty?
                   main_label.compact.join(', ')
                 when 'work_of_art'
                   [properties[:artist], label, properties[:description]].compact.join(', ')
                 when 'writing'
                   label
                 else
                   id
                 end

    "<span>#{inner_html.strip}.</span>"
  end
  # rubocop:enable Metrics/MethodLength, Metrics/CyclomaticComplexity, Metrics/AbcSize, Layout/LineLength

  private

  def ensure_json
    return unless properties.is_a? String

    self.properties = JSON.parse(properties).with_indifferent_access.transform_keys {|key| key.camelize(:lower) }
  end
end
