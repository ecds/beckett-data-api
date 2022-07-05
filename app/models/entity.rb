# frozen_string_literal: true

require 'action_view'

class Entity < ApplicationRecord
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

  def clean_label
    strip_tags label
  rescue NoMethodError
    label
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
      description: description
    }
  end

  def should_index?
    public_letters.present?
  end

  # rubocop:disable Metrics/MethodLength, Metrics/CyclomaticComplexity, Metrics/AbcSize, Layout/LineLength
  def short_display
    inner_html = case e_type
                 when 'attendance'
                   [properties[:eventType], label, properties[:placeDate]].compact.join(', ')
                 when 'music'
                   alts = properties[:alternateSpellings].empty? ? nil : "[#{properties[:alternateSpellings].join(', ')}]"
                   main_label = [properties[:composer], label].compact.join(', ')
                   alts.nil? ? main_label : "#{main_label} #{alts}"
                 when 'organization'
                   properties[:alternateSpellings].empty? ? label : "#{label}, #{properties[:alternateSpellings].join(', ')}"
                 when 'person'
                   ["#{label} #{properties[:lifeDates]}".strip, description].compact.join('. ')
                 when 'place', 'writing'
                   label
                 when 'production'
                   main_label = properties[:director].nil? ? label : "#{label}, dir. #{properties[:director]}"
                   [main_label, properties[:theater], properties[:city], properties[:date]].compact.join(', ')
                 when 'public_event'
                   properties[:date].nil? ? label : "#{label} (#{properties[:date]})"
                 when 'publication'
                   main_label = [properties[:author], label, properties[:translator]].compact.join(', ')
                   properties[:publicationInformation].nil? ? main_label : "#{main_label} #{properties[:publicationInformation]}"
                 when 'reading'
                   main_label = properties[:authors].empty? ? label : "#{properties[:authors].join(', ')}, #{label}"
                   [main_label, properties[:publication]].compact.join(', ')
                 when 'translating'
                   main_label = [properties[:author], label]
                   into = properties[:translatedInto].nil? ? nil : "Translated into #{properties[:translatedInto]}"
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
        alternateSpellings: [],
        attendedWith: [],
        director: nil,
        eventType: nil,
        performedBy: [],
        placeDate: nil
      },
      music: {
        alternateSpellings: [],
        composer: nil,
        links: [],
        notes: nil,
        performedBy: []
      },
      organization: {
        alternateSpellings: [],
        profile: nil
      },
      person: {
        alternateSpellings: [],
        findingAids: [],
        firstName: nil,
        lastName: nil,
        lifeDates: nil,
        links: [],
        profile: nil
      },
      place: {
        alternateSpellings: [],
        links: []
      },
      production: {
        alternateSpellings: [],
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
        stagingBeckett: nil,
        theater: nil
      },
      public_event: {
        date: nil
      },
      publication: {
        author: nil,
        notes: nil,
        publicationInformation: nil,
        translator: nil
      },
      reading: {
        authors: [],
        comment: nil,
        publication: nil,
        publicationFormat: nil
      },
      translating: {
        author: nil,
        comments: nil,
        translatedInto: nil,
        translatedTitle: nil,
        translator: nil
      },
      work_of_art: {
        alternateSpellings: [],
        artist: nil,
        artistAlternateSpellings: [],
        notes: nil,
        ownerLocationAccessionNumberCurrent: nil,
        ownerLocationAccessionNumberContemporaneous: nil
      },
      writing: {
        date: nil,
        notes: nil,
        porposal: nil,
        beckettDigitalManuscriptProject: nil
      }
    }

    props[e_type.to_sym]
  end
  # rubocop:enable Metrics/MethodLength, Metrics/CyclomaticComplexity, Metrics/AbcSize, Layout/LineLength

  private

  def format_properties
    self.properties = JSON.parse(properties).with_indifferent_access if properties.is_a? String
    properties.transform_keys! {|key| key.underscore.camelize(:lower) }
    properties.each_key {|key| properties.delete(key.to_sym) unless default_properties.include?(key.to_sym) }
    self.properties = ActiveSupport::HashWithIndifferentAccess.new(default_properties.merge(properties))
    self.description = properties.delete(:description) if properties[:description].present?
  end
end
