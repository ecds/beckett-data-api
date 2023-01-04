# frozen_string_literal: true

# rubocop:disable Metrics/ModuleLength, Metrics/BlockLength, Metrics/PerceivedComplexity, Metrics/MethodLength, Metrics/AbcSize, Metrics/CyclomaticComplexity, Layout/LineLength

# Common stuff for indexing
module EntityCommon
  extend ActiveSupport::Concern

  included do
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
      writing: 11,
      generic: 12
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
      spanish_tr_and_production_rights: 30,
      romanian: 31
    }

    def clean_label
      return strip_tags "#{first_name} #{last_name}" if person?

      strip_tags label
    rescue NoMethodError
      label
    end

    def clean_description
      strip_tags description
    rescue NoMethodError
      description
    end

    def short_display
      lines = []
      case e_type
      when 'attendance'
        if event_type && description
          lines.push("<strong>#{event_type.titleize}</strong>, #{description}")
        else
          lines.push("<strong>#{event_type.titleize}</strong>") unless event_type.blank?
          lines.push(description) unless description.blank?
        end
        lines.push("<strong>Attended with</strong> #{attended_with.to_sentence}") unless attended_with.blank?
        lines.push("<strong>Place, Date</strong> #{place_date}") unless place_date.blank?
        lines.push("<strong>Director</strong> #{director}") unless director.blank?
      when 'music'
        lines.push("<strong>Composer</strong> #{composer}") unless composer.blank?
        lines.push("<strong>Title</strong> #{label}")
        lines.push("<strong>Description</strong> #{description}") unless description.blank?
      when 'organization', 'place'
        lines.push("<strong>#{label}</strong>")
        lines.push(description) unless description.blank?
      when 'person'
        lines.push("<strong>#{[person_name, life_dates].compact.join(', ')}</strong>")
        lines.push(description) unless description.blank?
      when 'production'
        lines.push("<strong>Title</strong> #{label}")
        if proposal && response
          lines.push("<strong>Proposal/Response</strong> #{proposal} / #{response}") unless proposal.blank?
        else
          lines.push("<strong>Proposal</strong> #{proposal}") unless proposal.blank?
        end
        if director && theater && city
          lines.push("<strong>Director</strong> #{director} <strong>Theatre, City</strong> #{theater}, #{city}")
        else
          lines.push("<strong>Director</strong> #{director}") unless director.blank?
          lines.push("<strong>Theatre, City</strong> #{[theater, city].join(', ')}") unless theater.blank?
        end
        lines.push("<strong>Date(s)</strong> #{date_str}") unless date_str.blank?
      when 'publication'
        lines.push("<strong>Author</strong> #{authors.to_sentence}") unless authors.blank?
        lines.push("<strong>Title</strong> #{label}")
        lines.push("<strong>Translator</strong> #{translators.to_sentence}") unless translators.blank?
        lines.push("<strong>Publication</strong> #{publication_information}") unless publication_information.blank?
      when 'public_event'
        lines.push("<strong>#{label}</strong>")
        lines.push("<strong>#{date_str}</strong>") unless date_str.blank?
      when 'reading'
        lines.push("<strong>Author</strong> #{authors.to_sentence}") unless authors.blank?
        lines.push("<strong>Title</strong> #{label}")
        lines.push("<strong>Publication</strong> #{publication_information}") unless publication_information.blank?
      when 'translating'
        if authors
          lines.push("<strong>Author</strong> #{authors.to_sentence}, <strong>Original Title</strong> #{label}") unless authors.blank?
        else
          lines.push("<strong>Original Title</strong> #{label}")
        end
        if translated_into && translators
          lines.push("<strong>Translated into</strong> #{translated_into.titleize} by #{translators.to_sentence}") unless translated_into.blank?
        else
          lines.push("<strong>Translated into</strong> #{translated_into.titleize}") unless translated_into.blank?
        end
        lines.push("<strong>Translated title</strong> #{translated_title}") unless translated_title.blank?
      when 'work_of_art'
        lines.push("<strong>Artist</strong> #{artist}") unless artist.blank?
        lines.push("<strong>Title</strong> #{label}")
        lines.push("<strong>Description</strong> #{description}") unless description.blank?
        lines.push("<strong>Owner/location</strong> #{owner_location}") unless owner_location.blank?
      when 'writing'
        lines.push("<strong>Title</strong> #{label}")
        lines.push("<strong>Proposal/Response</strong> #{proposal}") if proposal
        lines.push("<strong>Translator</strong> #{translators.to_sentence}") unless translators.blank?
        lines.push("<strong>Date</strong> #{date_str}") unless date_str.blank?
      end

      paragraphs = lines.map {|line| "<p>#{line}</p>" }.flatten.join.strip
      Loofah.fragment("<section>#{paragraphs}</section>").scrub!(:prune).to_html
    end

    def full_display
      rows = []
      case e_type
      when 'attendance'
        rows.push("<th scope='row'>Description</th><td>#{description}</td>") unless description.blank?
        rows.push("<th scope='row'>Alternate Name(s)</th><td>#{alternate_names.join(', ')}</td>") unless alternate_names.blank?
        rows.push("<th scope='row'>Director</th><td>#{director}</td>") unless director.blank?
        rows.push("<th scope='row'>Performed by</th><td>#{performed_by.to_sentence}</td>") unless performed_by.blank?
        rows.push("<th scope='row'>Attended with</th><td>#{attended_with.to_sentence}</td>") unless attended_with.blank?
        rows.push("<th scope='row'>Place, Date</th><td>#{place_date}</td>") unless place_date.blank?
        rows.push("<th scope='row'>Notes</th><td>#{notes}</td>") unless notes.blank?
      when 'music'
        rows.push("<th scope='row'>Composer</th><td>#{composer}</td>") unless composer.blank?
        rows.push("<th scope='row'>Title</th><td>#{label}</td>")
        rows.push("<th scope='row'>Alternate Title(s)</th><td>#{alternate_names.join(', ')}</td>") unless alternate_names.blank?
        rows.push("<th scope='row'>Description</th><td>#{description}</td>") unless description.blank?
        rows.push("<th scope='row'>Performed by</th><td>#{performed_by.to_sentence}</td>") unless performed_by.blank?
        rows.push("<th scope='row'>Notes</th><td>#{notes}</td>") unless notes.blank?
        rows.push("<th scope='row'>See Also</th><td>#{link_list}</td>") unless links.blank?
      when 'organization'
        rows.push("<th scope='row'>Name</th><td>#{label}</td>")
        rows.push("<th scope='row'>Description</th><td>#{description}</td>") unless description.blank?
        rows.push("<th scope='row'>Alternate Name(s)</th><td>#{alternate_names.join(', ')}</td>") unless alternate_names.blank?
        rows.push("<th scope='row'>Profile</th><td>#{profile}</td>") unless profile.blank?
        rows.push("<th scope='row'>Notes</th><td>#{notes}</td>") unless notes.blank?
      when 'person'
        rows.push("<th scope='row'>Name</th><td>#{person_name}</td>")
        rows.push("<th scope='row'>Alternative Name(s)</th><td>#{alternate_names.join(', ')}</td>") unless alternate_names.blank?
        rows.push("<th scope='row'>Life Dates</th><td>#{life_dates}</td>") unless life_dates.blank?
        rows.push("<th scope='row'>Description</th><td>#{description}</td>") unless description.blank?
        rows.push("<th scope='row'>Profile</th><td>#{profile}</td>") unless profile.blank?
        rows.push("<th scope='row'>See Also</th><td>#{link_list}</td>") unless links.blank?
      when 'place'
        rows.push("<th scope='row'>Name</th><td>#{label}</td>")
        rows.push("<th scope='row'>Description</th><td>#{description}</td>") unless description.blank?
        rows.push("<th scope='row'>See Also</th><td>#{link_list}</td>") unless links.blank?
      when 'production'
        rows.push("<th scope='row'>Title</th><td colspan=5>#{label}</td>")
        unless proposal.blank?
          cells = []
          cells.push("<th scope='row'>Proposal</th><td>#{proposal}</td>")
          cells.push("<th scope='row'>Response</th><td>#{response}</td>") unless response.blank?
          cells.push("<th scope='row'>Reason</th><td>#{reason}</td>") unless reason.blank?
          rows.push(cells.join)
        end
        rows.push("<th scope='row'>Date(s)</th><td colspan=5>#{date_str}</td>") unless date_str.blank?
        rows.push("<th scope='row'>Director</th><td colspan=5>#{director}</td>") unless director.blank?
        rows.push("<th scope='row'>Cast</th><td colspan=5>#{cast.to_sentence}</td>") unless cast.blank?
        rows.push("<th scope='row'>Personnel</th><td colspan=5>#{personnel.to_sentence}</td>") unless personnel.blank?
        rows.push("<th scope='row'>Theatre, City</th><td colspan=5>#{theater}, #{city}</td>") unless theater.blank?
        rows.push("<th scope='row'>Notes</th><td colspan=5>#{notes}</td>") unless notes.blank?
        rows.push("<th scope='row'>See Also</th><td colspan=5>#{link_list}</td>") unless links.blank?
      when 'publication'
        rows.push("<th scope='row'>Author</th><td>#{authors.join(', ')}</td>") unless authors.blank?
        rows.push("<th scope='row'>Title</th><td>#{label}</td>")
        rows.push("<th scope='row'>Translator</th><td>#{translators.join(', ')}</td>") unless translators.blank?
        rows.push("<th scope='row'>Publication</th><td>#{publication_information}</td>") unless publication_information.blank?
        rows.push("<th scope='row'>Notes</th><td>#{notes}</td>") unless notes.blank?
      when 'public_event'
        rows.push("<th scope='row'>Description</th><td>#{description}</td>") unless description.blank?
        rows.push("<th scope='row'>Date</th><td>#{date_str}</td>") unless date_str.blank?
        rows.push("<th scope='row'>See Also</th><td>#{link_list}</td>") unless links.blank?
      when 'reading'
        rows.push("<th scope='row'>Author</th><td>#{authors.join(', ')}</td>") unless authors.blank?
        rows.push("<th scope='row'>Title</th><td>#{label}</td>")
        rows.push("<th scope='row'>Publication</th><td>#{publication_information}</td>") unless publication_information.blank?
        rows.push("<th scope='row'>Notes</th><td>#{notes}</td>") unless notes.blank?
      when 'translating'
        rows.push("<th scope='row'>Original Title</th><td>#{label}</td>")
        rows.push("<th scope='row'>Author</th><td>#{authors.join(', ')}</td>") unless authors.blank?
        if translated_into && translators
          rows.push("<th scope='row'>Translated into</th><td>#{translated_into.titleize} by #{translators.join(', ')}</td>") unless translated_into.blank?
        else
          rows.push("<th scope='row'>Translated into</th><td>#{translated_into.titleize}</td>") unless translated_into.blank?
          rows.push("<th scope='row'>Translator</th><td>#{translators.join(', ')}</td>") unless translators.blank?
        end
        rows.push("<th scope='row'>Translated Title</th><td>#{translated_title}</td>") unless translated_title.blank?
        rows.push("<th scope='row'>Publication/Production</th><td>#{notes}</td>") unless notes.blank?
      when 'work_of_art'
        rows.push("<th scope='row'>Artist</th><td>#{artist}</td>") unless artist.blank?
        rows.push("<th scope='row'>Artist Alternative Name(s)</th><td>#{artist_alternate_spellings.join(', ')}</td>") unless artist_alternate_spellings.blank?
        rows.push("<th scope='row'>Title</th><td>#{label}</td>")
        rows.push("<th scope='row'>Alternative Title(s)</th><td>#{alternate_names.join(', ')}</td>") unless alternate_names.blank?
        rows.push("<th scope='row'>Description</th><td>#{description}</td>") unless description.blank?
        rows.push("<th scope='row'>Ownership and Location</th><td>#{owner_location}</td>") unless owner_location.blank?
        rows.push("<th scope='row'>Current Ownership and Location</th><td>#{owner_location_current}</td>") unless owner_location_current.blank?
        rows.push("<th scope='row'>Notes</th><td>#{notes}</td>") unless notes.blank?
        rows.push("<th scope='row'>See Also</th><td>#{link_list}</td>") unless links.blank?
      when 'writing'
        rows.push("<th scope='row'>Title</th><td colsapn=3>#{label}</td>")
        rows.push("<th scope='row'>Proposal/Response</th><td>#{proposal}</td>") unless proposal.blank?
        rows.push("<th scope='row'>Date</th><td colsapn=3>#{date_str}</td>") unless date_str.blank?
        rows.push("<th scope='row'>Notes</th><td colsapn=3>#{notes}</td>") unless notes.blank?
        rows.push("<th scope='row'>Archival Information</th><td colsapn=3>#{publication_information}</td>") unless publication_information.blank?
        rows.push("<th scope='row'>See Also</th><td colsapn=3>#{link_list}</td>") unless links.blank?
      end

      table_rows = rows.map {|row| "<tr>#{row}</tr>" }.flatten.join.strip
      Loofah.fragment("<table>#{table_rows}</table>").scrub!(:prune).to_html
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
        ],
        generic: attributes.keys.map(&:to_sym)
      }

      self.e_type = 'generic' if e_type.nil?

      [:label, :description, :e_type, :legacy_pk, *props[e_type.to_sym]].uniq
    end

    # TODO: How to add icon
    def link_list
      link_items = links.map do |link|
        [
          '<li>',
          "<a href='#{link}' target='_blank' rel='noopener'>",
          link,
          '<span calss="screen-reader-only">(opens in new tab)</span>',
          '</a>',
          '</li>'
        ].join
      end

      "<ul>#{link_items.join.strip}</ul>".strip
    end

    # def alt_names
    #   return if alternate_names.blank?

    #   "<strong>Alternate name(s)</strong> #{alternate_names.join(', ')}"
    # end

    def person_name
      "#{first_name} #{last_name}".strip
    end
  end
end

# rubocop:enable Metrics/ModuleLength, Metrics/BlockLength, Metrics/PerceivedComplexity, Metrics/MethodLength, Metrics/AbcSize, Metrics/CyclomaticComplexity, Layout/LineLength
