# frozen_string_literal: true

require 'action_view'

class Entity < ApplicationRecord
  include ActionView::Helpers::SanitizeHelper
  include Searchable

  self.implicit_order_column = 'label'

  before_save :concat_label, :remove_div, :add_full_stops, :to_plain_text

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

  # belongs_to :event_type, optional: true

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
      short_display:,
      full_display:
    }.merge(attributes)
  end

  def should_index?
    public_letters.present?
  end

  # rubocop:disable Metrics/PerceivedComplexity, Metrics/MethodLength, Metrics/AbcSize, Metrics/CyclomaticComplexity, Layout/LineLength
  def short_display
    lines = []
    case e_type
    when 'attendance'
      lines.push("<strong>#{event_type.titleize}</strong>, #{description}")
      lines.push("<strong>Attended with</strong> #{attended_with.to_sentence}") unless attended_with.nil?
      lines.push("<strong>Place, Date</strong> #{place_date}") unless place_date.nil?
      lines.push("<strong>Director</strong> #{director}") unless director.nil?
    when 'music'
      lines.push("<strong>Composer</strong> #{composer}") unless composer.nil?
      lines.push("<strong>Title</strong> #{label}")
      lines.push("<strong>Description</strong> #{description}") unless description.nil?
    when 'organization', 'place'
      lines.push("<strong>#{label}</strong>")
      lines.push(description) unless description.nil?
    when 'person'
      lines.push("<strong>#{[person_name, life_dates].compact.join(', ')}</strong>")
      lines.push(description) unless description.nil?
    when 'production'
      lines.push("<strong>Title</strong> #{label}")
      lines.push("<strong>Proposal/Response</strong> #{proposal} / #{response}") unless proposal.nil?
      if director && theater && city
        lines.push("<strong>Director</strong> #{director} <strong>Theatre, City</strong> #{theater}, #{city}")
      else
        lines.push("<strong>Director</strong> #{director}") unless director.nil?
        lines.push("<strong>Theatre, City</strong> #{[theater, city].join(', ')}") unless theater.nil?
      end
      lines.push("<strong>Date(s)</strong> #{date}") unless date.nil?
    when 'publication'
      lines.push("<strong>Author</strong> #{authors.to_sentence}") unless authors.nil?
      lines.push("<strong>Title</strong> #{label}")
      lines.push("<strong>Translator</strong> #{translators.to_sentence}") unless translators.nil?
      lines.push("<strong>Publication</strong> #{publication_information}") unless publication_information.nil?
    when 'public_event'
      lines.push("<strong>#{label}</strong>")
      lines.push("<strong>#{date_str}</strong>") unless date_str.nil?
    when 'reading'
      lines.push("<strong>Author</strong> #{authors.to_sentence}") unless authors.nil?
      lines.push("<strong>Title</strong> #{label}")
      lines.push("<strong>Publication</strong> #{publication_information}") unless publication_information.nil?
    when 'translating'
      if authors
        lines.push("<strong>Author</strong> #{authors.to_sentence}, <strong>Original Title</strong> #{label}") unless authors.nil?
      else
        lines.push("<strong>Original Title</strong> #{label}")
      end
      if translated_into && translators
        lines.push("<strong>Translated into </strong> #{translated_into.titleize} by #{translators.to_sentence}") unless translated_into.nil?
      else
        lines.push("<strong>Translated into </strong> #{translated_into.titleize}") unless translated_into.nil?
      end
      lines.push("<strong>Translated title</strong> #{translated_title}") unless translated_title.nil?
    when 'work_of_art'
      lines.push("<strong>Artist</strong> #{artist}") unless artist.nil?
      lines.push("<strong>Title</strong> #{label}")
      lines.push("<strong>Description</strong> #{description}") unless description.nil?
      lines.push("<strong>Owner/location</strong> #{owner_location}") unless owner_location.nil?
    when 'writing'
      lines.push("<strong>Title</strong> #{label}")
      lines.push("<strong>Proposal/Response</strong> #{proposal} / #{response}") if proposal && response
      lines.push("<strong>Proposal</strong> #{proposal}") if proposal && response.nil?
      lines.push("<strong>Translatero</strong> #{translators.to_sentence}") unless translators.nil?
      lines.push("<strong>Date</strong> #{date_str}") unless date.nil?
    end

    paragraphs = lines.map {|line| "<p>#{line}</p>" }.flatten.join
    Loofah.fragment("<section>#{paragraphs}</section>").scrub!(:prune)
  end

  def full_display
    rows = []
    case e_type
    when 'attendance'
      rows.push("<th scope='row'>Description</th><td>#{description}</td>") unless description.nil?
      rows.push("<th scope='row'>Alternate Name(s)</th><td>#{alternate_names.join(', ')}</td>") unless alternate_names.nil?
      rows.push("<th scope='row'>Director</th><td>#{director}</td>") unless director.nil?
      rows.push("<th scope='row'>Performed by</th><td>#{performed_by.to_sentence}</td>") unless performed_by.nil?
      rows.push("<th scope='row'>Attended with</th><td>#{attended_with.to_sentence}</td>") unless attended_with.nil?
      rows.push("<th scope='row'>Place, Date</th><td>#{place_date}</td>") unless place_date.nil?
      rows.push("<th scope='row'>Notes</th><td>#{notes}</td>") unless notes.nil?
    when 'music'
      rows.push("<th scope='row'>Composer</th><td>#{composer}</td>") unless composer.nil?
      rows.push("<th scope='row'>Title</th><td>#{label}</td>")
      rows.push("<th scope='row'>Alternate Title(s)</th><td>#{alternate_names.join(', ')}</td>") unless alternate_names.nil?
      rows.push("<th scope='row'>Description</th><td>#{description}</td>") unless description.nil?
      rows.push("<th scope='row'>Performed by</th><td>#{performed_by.to_sentence}</td>") unless performed_by.nil?
      rows.push("<th scope='row'>Notes</th><td>#{notes}</td>") unless notes.nil?
      rows.push("<th scope='row'>See Also</th><td>#{link_list}</td>") unless links.nil?
    when 'organization'
      rows.push("<th scope='row'>Name</th><td>#{label}</td>") unless label.nil?
      rows.push("<th scope='row'>Description</th><td>#{description}</td>") unless description.nil?
      rows.push("<th scope='row'>Alternate Name(s)</th><td>#{alternate_names.join(', ')}</td>") unless alternate_names.nil?
      rows.push("<th scope='row'>Profile</th><td>#{profile}</td>") unless profile.nil?
      rows.push("<th scope='row'>Notes</th><td>#{notes}</td>") unless notes.nil?
    when 'person'
      rows.push("<th scope='row'>Name</th><td>#{person_name}</td>")
      rows.push("<th scope='row'>Alternative Name(s)</th><td>#{alternate_names.join(', ')}</td>") unless alternate_names.nil?
      rows.push("<th scope='row'>Life Dates</th><td>#{life_dates}</td>") unless life_dates.nil?
      rows.push("<th scope='row'>Description</th><td>#{description}</td>") unless description.nil?
      rows.push("<th scope='row'>Profile</th><td>#{profile}</td>") unless profile.nil?
      rows.push("<th scope='row'>See Also</th><td>#{link_list}</td>") unless links.nil?
    when 'place'
      rows.push("<th scope='row'>Name</th><td>#{label}</td>")
      rows.push("<th scope='row'>Description</th><td>#{description}</td>") unless description.nil?
      rows.push("<th scope='row'>See Also</th><td>#{link_list}</td>") unless links.nil?
    when 'production'
      rows.push("<th scope='row'>Title</th><td colspan=5>#{label}</td>")
      unless proposal.nil?
        cells = []
        cells.push("<th scope='row'>Proposal</th><td>#{proposal}</td>")
        cells.push("<th scope='row'>Response</th><td>#{response}</td>") unless response.nil?
        cells.push("<th scope='row'>Reason</th><td>#{reason}</td>") unless reason.nil?
        rows.push(cells.join)
      end
      rows.push("<th scope='row'>Date(s)</th><td colspan=5>#{date_str}</td>") unless date_str.nil?
      rows.push("<th scope='row'>Director</th><td colspan=5>#{director}</td>") unless director.nil?
      rows.push("<th scope='row'>Cast</th><td colspan=5>#{cast.to_sentence}</td>") unless cast.nil?
      rows.push("<th scope='row'>Personnel</th><td colspan=5>#{personnel.to_sentence}</td>") unless personnel.nil?
      rows.push("<th scope='row'>Theatre, City</th><td colspan=5>#{theater}, #{city}</td>") unless theater.nil?
      rows.push("<th scope='row'>Notes</th><td colspan=5>#{notes}</td>") unless notes.nil?
      rows.push("<th scope='row'>See Also</th><td colspan=5>#{link_list}</td>") unless links.nil?
    when 'publication'
      rows.push("<th scope='row'>Author</th><td>#{authors.join(', ')}</td>") unless authors.nil?
      rows.push("<th scope='row'>Title</th><td>#{label}</td>")
      rows.push("<th scope='row'>translator</th><td>#{translators.join(', ')}</td>") unless translators.nil?
      rows.push("<th scope='row'>Publication</th><td>#{publication_information}</td>") unless publication_information.nil?
      rows.push("<th scope='row'>Notes</th><td>#{notes}</td>") unless notes.nil?
    when 'public_event'
      rows.push("<th scope='row'>Description</th><td>#{description}</td>") unless description.nil?
      rows.push("<th scope='row'>Date</th><td>#{date_str}</td>") unless date_str.nil?
      rows.push("<th scope='row'>See Also</th><td>#{link_list}</td>") unless links.nil?
    when 'reading'
      rows.push("<th scope='row'>Author</th><td>#{authors.join(', ')}</td>") unless authors.nil?
      rows.push("<th scope='row'>Title</th><td>#{label}</td>")
      rows.push("<th scope='row'>Publication</th><td>#{publication_information}</td>") unless publication_information.nil?
      rows.push("<th scope='row'>Notes</th><td>#{notes}</td>") unless notes.nil?
    when 'translating'
      rows.push("<th scope='row'>Original Title</th><td>#{label}</td>")
      rows.push("<th scope='row'>Author</th><td>#{authors.join(', ')}</td>") unless authors.nil?
      if translated_into && translators
        rows.push("<th scope='row'>Translated into</th><td>#{translated_into.titleize} by #{translators.join(', ')}</td>") unless translated_into.nil?
      else
        rows.push("<th scope='row'>Translated into</th><td>#{translated_into.titleize}</td>") unless translated_into.nil?
        rows.push("<th scope='row'>Translator</th><td>#{translators.join(', ')}</td>") unless translators.nil?
      end
      rows.push("<th scope='row'>Translated Title</th><td>#{translated_title}</td>") unless translated_title.nil?
      rows.push("<th scope='row'>Publication/Production</th><td>#{notes}</td>") unless notes.nil?
    when 'work_of_art'
      rows.push("<th scope='row'>Artist</th><td>#{artist}</td>") unless artist.nil?
      rows.push("<th scope='row'>Artist Alternative Names</th><td>#{artist_alternate_spellings.join(', ')}</td>") unless artist_alternate_spellings.nil?
      rows.push("<th scope='row'>Title</th><td>#{label}</td>")
      rows.push("<th scope='row'>Alternative Titles</th><td>#{alternate_names.join(', ')}</td>") unless alternate_names.nil?
      rows.push("<th scope='row'>Description</th><td>#{description}</td>") unless description.nil?
      rows.push("<th scope='row'>Ownership and Location</th><td>#{owner_location}</td>") unless owner_location.nil?
      rows.push("<th scope='row'>Current Ownership and Location</th><td>#{owner_location_current}</td>") unless owner_location_current.nil?
      rows.push("<th scope='row'>Notes</th><td>#{notes}</td>") unless notes.nil?
      rows.push("<th scope='row'>See Also</th><td>#{link_list}</td>") unless links.nil?
    when 'writing'
      rows.push("<th scope='row'>Title</th><td colsapn=3>#{label}</td>")
      unless proposal.nil?
        cells = []
        cells.push("<th scope='row'>Proposal</th><td>#{proposal}</td>") unless proposal.nil?
        cells.push("<th scope='row'>Response</th><td>#{response}</td>") unless response.nil?
        rows.push(cells.join)
      end
      rows.push("<th scope='row'>Date</th><td colsapn=3>#{date_str}</td>") unless date.nil?
      rows.push("<th scope='row'>Notes</th><td colsapn=3>#{notes}</td>") unless notes.nil?
      rows.push("<th scope='row'>Archival Infromation</th><td colsapn=3>#{publication_information}</td>") unless publication_information.nil?
      rows.push("<th scope='row'>See Also</th><td colsapn=3>#{link_list}</td>") unless links.nil?
    end

    table_rows = rows.map {|row| "<tr>#{row}</tr>" }.flatten.join
    Loofah.fragment("<table>#{table_rows}</table>").scrub!(:prune)
  end

  def allowed_attributes
    props = {
      attendance: %i[
        alternate_names
        alternate_spellings
        attended_with
        director
        event_type
        notes
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
        alternate_names
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
        owner_location
        owner_location_current
      ],
      writing: %i[
        date_str
        links
        notes
        proposal
        publication_information
      ]
    }

    [:label, :description, :e_type, :legacy_pk, *props[e_type.to_sym]]
  end
  # rubocop:enable Metrics/PerceivedComplexity, Metrics/MethodLength, Metrics/AbcSize, Metrics/CyclomaticComplexity, Layout/LineLength

  private

  def concat_label
    case e_type
    when 'attendance'

      self.label = if event_type && description
                     "#{event_type.titleize}, #{description}"
                   else
                     "#{event_type.titleize} #{description}".strip
                   end
    when 'person'
      self.label = "#{last_name}, #{first_name}" if last_name && first_name
      self.life_dates = nil if life_dates == 'nd'
      self.life_dates = life_dates.gsub(/[()]/, '') if life_dates
    end
  end

  def remove_div
    allowed_attributes.each do |attribute|
      next unless self[attribute].is_a? String

      fragment = Nokogiri::HTML.fragment public_send(attribute)
      next unless fragment.elements.first&.name == 'div'

      self[attribute] = fragment.children.first.inner_html.gsub('em>', 'i>')
    end
  end

  def add_full_stops
    if publication_information.present? && !publication_information.last.match('.*\\p{Punct}')
      self.publication_information = "#{publication_information}."
    end

    self.description = "#{description}." if description.present? && !description.last.match('.*\\p{Punct}')
  end

  # TODO: How to add icon
  def link_list
    link_items = links.map do |link|
      "<li>\
      <a href='#{link}' target='_blank' rel='noopener'>\
      #{link}\
      <span calss='screen-reader-only'>(opens in new tab)</span>\
      </a>\
      </li>"
    end

    "<ul>#{link_items.join}</ul>"
  end

  def alt_names
    return if alternate_names.blank?

    "<strong>Alternate name(s)</strong> #{alternate_names.join(', ')}"
  end

  def person_name
    "#{first_name} #{last_name}".strip
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
end
