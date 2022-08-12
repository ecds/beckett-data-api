# frozen_string_literal: true

require 'action_view'

class Entity < ApplicationRecord
  include ActionView::Helpers::SanitizeHelper
  include Searchable

  self.implicit_order_column = 'label'

  before_save :person_label
  before_save :remove_div

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

  belongs_to :event_type, optional: true

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

  enum event_type: {
    theatre: 0,
    _reading: 1,
    rehearsal: 2,
    radio_broadcast: 3,
    film: 4,
    concert: 5,
    exhibit: 6,
    opera: 7,
    lecture_reading: 8,
    award_ceremony: 9,
    cricket_game: 10,
    television_film: 11,
    theatre_rehearsal: 12,
    rugby_radio: 13,
    concert_radio: 14,
    boxing_radio: 15,
    memorial: 16,
    play: 17,
    ballet: 18,
    recordings: 19,
    concert_radio_broadcast: 20,
    hausmusic_concert: 21,
    cabaret: 22,
    lecture: 23,
    television_broadcast: 24,
    record: 25,
    tape_recording: 26,
    publicity_luncheon: 27,
    dinner: 28,
    tennis_radion: 29,
    rugby_television: 30,
    television: 31,
    footbal: 32,
    rugby: 33,
    cricket_match: 34
  }

  enum translated_into: {
    arabic: 0,
    braille: 1,
    danish: 2,
    dutch: 3,
    english: 4,
    finnish: 5,
    flemish: 6,
    french: 7,
    french_and_english: 8,
    gaelic: 9,
    german: 10,
    greek: 11,
    hebrew: 12,
    hungarian: 13,
    icelandic: 14,
    irish_gaelic: 15,
    italian: 16,
    japanese: 17,
    marathi: 18,
    norwegian: 19,
    polish: 20,
    portuguese: 21,
    rumanian: 22,
    russian: 23,
    schweizerdeutsche: 24,
    serbo_croatian: 25,
    spanish: 26,
    spanisn: 27,
    swedish: 28,
    ukrainian: 29,
    spanish_tr_and_production_rights: 30
  }

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
    attributes = {}
    allowed_attributes.each {|attribute| attributes[attribute] = public_send(attribute) }
    {
      label:,
      clean_label:,
      description:,
      clean_description:,
      e_type:,
      id_path: url_path,
      display_header:,
      display_description:,
      display_extra:
    }.merge(attributes)
  end

  def should_index?
    public_letters.present?
  end

  # rubocop:disable Metrics/MethodLength, Metrics/CyclomaticComplexity, Metrics/AbcSize
  def display_header
    # description = "#{description}." if description&.last&.match(/^[0-9A-Za-z]+$/)
    case e_type
    when 'attendance'
      event_type.nil? ? label : "<strong>#{event_type}</strong> #{label}"
    when 'music'
      alts = alternate_spellings.empty? ? nil : "[#{alternate_spellings.join(', ')}]"
      main_label = [composer, label].compact.join(', ')
      alts.nil? ? main_label : "#{main_label} #{alts}"
    when 'person'
      [label, life_dates].compact.join(' ')
    when 'production'
      main_label = director.nil? ? label : "#{label}, dir. #{director}"
      [main_label, theater, city, date].compact.join(', ')
    when 'publication'
      main_label = [authors.to_sentence, label, translators.join(', ')].compact.join(', ')
      publication_information.nil? ? main_label : "#{main_label} #{publication_information}"
    when 'translating'
      main_label = [authors.to_sentence, label]
      into = translated_into.nil? ? nil : "Translated into #{translated_into}"
      by = translators.nil? ? nil : "by #{translators.join(', ')}"
      extra = [into, by].compact.join(' ')
      main_label.push(extra) unless extra.empty?
      main_label.compact.join(', ')
    when 'work_of_art'
      "<strong>Artist</strong> #{artist}"
    else
      label
    end

    # inner_html.chomp!('.') if inner_html.ends_with?('.')
    # Nokogiri::HTML.fragment("<span>#{inner_html.strip}.</span>")
  end

  def display_description
    case e_type
    when 'attendance'
      place_date
    when 'music'
      2
    when 'production'
      6
    when 'public_event'
      "<b>#{date}</b>"
    when 'publication'
      8
    when 'reading'
      authors.to_sentence
    when 'translating'
      "<strong>Translator(s)</strong> #{translators.join(', ')}."
    when 'work_of_art'
      "<strong>Title</strong> #{label} [#{alt_names}]"
    when 'writing'
      "<strong>Proposal/Response</strong> #{proposal}"
    else
      description
    end
  end

  def display_extra
    case e_type
    when 'attendance'
      "<strong>Director</strong> #{director}"
    when 'music'
      2
    when 'organization', 'person'
      alt_names
    when 'place'
      nil
    when 'production'
      6
    when 'public_event', 'work_of_art'
      description
    when 'publication'
      8
    when 'reading'
      publication_information
    when 'translating'
      "<strong>Translated title</strong> #{translated_title}."
    when 'writing'
      "<strong>Date Written/Archive</strong> #{date}"
    end
  end

  def full_display
    body = case e_type
           when 'attendance'
             "#{alt_names}\
             <p>#{display_description}</p>\
             <p><strong>Attended with</storng> #{attended_with.join(', ')}</p>\
             <p><strong>Performed by</storng> #{performed_by.join(', ')}</p>\
             <p><strong>Notes</storng> #{notes}</p>"
           when 'organization', 'public_event'
             "<p>#{display_description}</p>\
             <p>#{display_extra}</p>"
           when 'person'
             "<p>#{display_description}</p>\
             <p>#{profile}</p>\
             <p>#{display_extra}</p>\
             #{link_list}"
           when 'place'
             "<p>#{display_description}</p>\
            #{link_list}"
           when 'reading'
             "<p>#{display_description}</p>\
             <p>#{display_extra}</p>\
             <p>#{notes}</p>"
           when 'translating'
             "<strong>Author</strong> #{authors.to_sentence}\
             <p>#{display_description}</p>\
             <p><strong>Translated into</strong> #{translated_into}</p>\
             <p>#{display_extra}</p>\
             <p><strong>Notes</strong> #{notes}</p>"
           when 'work_of_art'
             "<p>#{display_description}</p>\
             <p>#{display_extra}</p>\
             <p>#{owner}</p>\
             <p>#{owner_location_accession_number_contemporaneous}</p>\
             <p>#{owner_location_accession_number_current}</p>\
             <p>#{notes}</p>\
             #{link_list}"
           when 'writing'
             "<p>#{display_description}</p>\
             <p><strong>Date Written/Archive</strong>#{date}.</p>\
             <p><strong>Publication/Production</strong>#{notes}</p>\
             #{link_list}"
           else
             "<p>#{display_extra}</p>"
           end

    Loofah.fragment("<section><h1>#{display_header}</h1>#{body}</section>").scrub!(:prune)
  end

  def allowed_attributes
    props = {
      attendance: %i[
        alternate_names
        alternate_spellings
        attended_with
        director
        event_type
        performed_by
        place_date
      ],
      music: %i[
        alternate_names
        alternate_spellings
        composer
        links
        notes
        performed_by
      ],
      organization: %i[
        alternate_spellings
        profile
      ],
      person: %i[
        alternate_names
        alternate_spellings
        first_name
        last_name
        life_dates
        links
        profile
      ],
      place: %i[
        alternate_spellings
        links
      ],
      production: %i[
        alternate_names
        cast
        city
        date_str
        director
        links
        notes
        personnel
        proposal
        response
        reason
        theater
      ],
      public_event: %i[
        date_str
      ],
      publication: %i[
        authors
        notes
        publication_information
        translators
      ],
      reading: %i[
        authors
        notes
        publication_information
        publication_format
      ],
      translating: %i[
        authors
        notes
        translated_into
        translated_title
        translators
      ],
      work_of_art: %i[
        alternate_spellings
        artist
        artist_alternate_spellings
        links
        notes
        owner_location_accession_number_current
        owner_location_accession_number_contemporaneous
      ],
      writing: %i[
        date
        links
        notes
        porposal
        publication_information
      ]
    }

    [:label, :description, :e_type, *props[e_type.to_sym]]
  end
  # rubocop:enable Metrics/MethodLength, Metrics/CyclomaticComplexity, Metrics/AbcSize

  private

  def person_label
    return unless person?

    self.label = "#{last_name}, #{first_name}" if last_name && first_name
    self.life_dates = life_dates.gsub(/[()]/, '') if life_dates
  end

  def remove_div
    allowed_attributes.each do |attribute|
      next unless self[attribute].is_a? String

      fragment = Nokogiri::HTML.fragment public_send(attribute)
      next unless fragment.elements.first&.name == 'div'

      self[attribute] = fragment.children.first.inner_html.gsub('em>', 'i>')
    end
  end

  # TODO: How to add icon
  def link_list
    link_items = links.map do |link|
      "<li>\
      <a href=\"#{link}\" targe=\"_blank\"> rel=\"noopener\"\
      #{link}\
      <span calss=\"screen-reader-only\">(opens in new tab)</span>\
      </a>\
      </li>"
    end

    "<p><strong>See Also</strong>\
    <ul>#{link_items.join}</ul>\
    </p>"
  end

  def alt_names
    return if alternate_names.blank?

    "<strong>Alternate name(s)</storng> #{alternate_names.join(', ')}"
  end
end
