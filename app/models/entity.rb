# frozen_string_literal: true

require 'action_view'

class Entity < ApplicationRecord
  include ActionView::Helpers::SanitizeHelper
  include Searchable

  serialize :properties, HashWithIndifferentAccess

  before_save :format_properties

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
    attendance: 0,
    music: 1,
    organization: 2,
    person: 3,
    place: 4,
    production: 5,
    public_event: 6,
    publication: 7,
    reading: 8,
    translating: 9,
    work_of_art: 10,
    writing: 11
  }

  def clean_label
    strip_tags label
  rescue NoMethodError
    label
  end

  def clean_description
    strip_tags description
  rescue NoMethodError
    description
  end

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

  def search_data
    {
      label: label,
      clean_label: clean_label,
      description: description,
      clean_description: clean_description,
      e_type: e_type,
      id_path: url_path,
      short_display: short_display,
      properties: properties
    }
  end

  def should_index?
    public_letters.present?
  end

  # rubocop:disable Metrics/MethodLength, Metrics/CyclomaticComplexity, Metrics/AbcSize, Layout/LineLength
  def short_display
    inner_html = case e_type
                 when 'attendance'
                   [properties[:event_type], label, properties[:place_date]].compact.join(', ')
                 when 'music'
                   alts = properties[:alternate_spellings].empty? ? nil : "[#{properties[:alternate_spellings].join(', ')}]"
                   main_label = [properties[:composer], label].compact.join(', ')
                   alts.nil? ? main_label : "#{main_label} #{alts}"
                 when 'organization'
                   properties[:alternate_spellings].empty? ? label : "#{label}, #{properties[:alternate_spellings].join(', ')}"
                 when 'person'
                   ["#{label} #{properties[:life_dates]}".strip, description].compact.join('. ')
                 when 'place', 'writing'
                   label
                 when 'production'
                   main_label = properties[:director].nil? ? label : "#{label}, dir. #{properties[:director]}"
                   [main_label, properties[:theater], properties[:city], properties[:date]].compact.join(', ')
                 when 'public_event'
                   properties[:date].nil? ? label : "#{label} (#{properties[:date]})"
                 when 'publication'
                   main_label = [properties[:author], label, properties[:translator]].compact.join(', ')
                   properties[:publication_information].nil? ? main_label : "#{main_label} #{properties[:publication_information]}"
                 when 'reading'
                   main_label = properties[:authors].empty? ? label : "#{properties[:authors].join(', ')}, #{label}"
                   [main_label, properties[:publication]].compact.join(', ')
                 when 'translating'
                   main_label = [properties[:author], label]
                   into = properties[:translated_into].nil? ? nil : "Translated into #{properties[:translated_into]}"
                   by = properties[:translator].nil? ? nil : "by #{properties[:translator]}"
                   extra = [into, by].compact.join(' ')
                   main_label.push(extra) unless extra.empty?
                   main_label.compact.join(', ')
                 when 'work_of_art'
                   [properties[:artist], label, description].compact.join(', ')
                 end

    inner_html.chomp!('.') if inner_html.ends_with?('.')
    "<span>#{inner_html.strip}.</span>"
  end

  def default_properties
    props = {
      attendance: {
        alternate_spellings: [],
        attended_with: [],
        director: nil,
        event_type: nil,
        performed_by: [],
        place_date: nil
      },
      music: {
        alternate_spellings: [],
        composer: nil,
        links: [],
        notes: nil,
        performed_by: []
      },
      organization: {
        alternate_spellings: [],
        profile: nil
      },
      person: {
        alternate_spellings: [],
        finding_aids: [],
        first_name: nil,
        last_name: nil,
        life_dates: nil,
        links: [],
        profile: nil
      },
      place: {
        alternate_spellings: [],
        links: []
      },
      production: {
        alternate_spellings: [],
        cast: [],
        city: nil,
        date: nil,
        director: nil,
        links: [],
        notes: nil,
        personnel: [],
        proposal: nil,
        response: nil,
        reason: nil,
        staging_beckett: nil,
        theater: nil
      },
      public_event: {
        date: nil
      },
      publication: {
        author: nil,
        notes: nil,
        publication_information: nil,
        translator: nil
      },
      reading: {
        authors: [],
        comment: nil,
        publication: nil,
        publication_format: nil
      },
      translating: {
        author: nil,
        comments: nil,
        translated_into: nil,
        translated_title: nil,
        translator: nil
      },
      work_of_art: {
        alternate_spellings: [],
        artist: nil,
        artist_alternate_spellings: [],
        notes: nil,
        owner_location_accession_number_current: nil,
        owner_location_accession_number_contemporaneous: nil
      },
      writing: {
        date: nil,
        notes: nil,
        porposal: nil,
        beckett_digital_manuscript_project: nil
      }
    }

    props[e_type.to_sym]
  end
  # rubocop:enable Metrics/MethodLength, Metrics/CyclomaticComplexity, Metrics/AbcSize, Layout/LineLength

  private

  def format_properties
    self.properties = JSON.parse(properties).with_indifferent_access if properties.is_a? String
    properties.transform_keys! {|key| key.underscore.downcase }
    properties.each_key {|key| properties.delete(key.to_sym) unless default_properties.include?(key.to_sym) }
    self.properties = ActiveSupport::HashWithIndifferentAccess.new(default_properties.merge(properties))
    self.description = properties.delete(:description) if properties[:description].present?
  end
end
