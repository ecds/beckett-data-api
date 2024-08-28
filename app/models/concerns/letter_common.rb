# frozen_string_literal: true

# rubocop:disable Metrics/BlockLength

# Common stuff for indexing
module LetterCommon
  extend ActiveSupport::Concern

  included do
    attr_accessor :tags

    # attr_readonly :content

    # scope :published, lambda {
    #   includes(:repositories)
    #     .references(:repositories)
    #     .where(
    #       repositories: {
    #         published: true
    #       }
    #     )
    #     # .where('letters.date BETWEEN ? AND ?', DateTime.new(1957), DateTime.new(1965, 12).at_end_of_month)
    # }

    scope :published, -> { where(published: true) }

    scope :between, lambda {|start_date, _end_date|
      where(date: start_date..end_date)
    }

    scope :between, lambda {|min, max|
      where(letters: { date: min..max })
    }

    # TODO: What to do about bad dates?
    def should_index?
      return false if date.nil?

      published
      # date.between? DateTime.new(1957), DateTime.new(1965, 12).at_end_of_month and repositories.any?(&:published)
    end

    def label
      return "#{date.strftime('%d %B %Y')} - #{recipients.map(&:label).join(', ')}" if date

      recipients.map(&:label).join(', ')
    end

    def mentions_hash
      m_hash = {}
      Entity.e_types.each_key do |type|
        next if mentions.public_send(type).empty?

        m_hash[type.pluralize.to_sym] = mentions.public_send(type).map do |mention|
          {
            type:,
            id: mention.entity.url_path,
            display: mention.entity.short_display
          }
        end
      end

      m_hash
    end

    def recipient_list
      recipients.map {|r| r.person? ? "#{r.first_name} #{r.last_name}" : r.label }.join(', ')
    end

    def first_repository
      letter_repositories.premiere.first
    end

    def second_repository
      letter_repositories.deuxieme.first
    end

    def third_repository
      letter_repositories.troisieme.first
    end

    def publication_information
      return ["<cite>#{volume_title}</cite>", volume_pages].compact.join(': ') if volume_title.present?

      nil
    end

    def volume_title
      years = case volume
              when 1
                '1929-1940'
              when 2
                '1941-1956'
              when 3
                '1957-1965'
              when 4
                '1966-1989'
              end
      "The Letters of Samuel Beckett, #{years}" if years
    end
  end
end

# rubocop:enable Metrics/BlockLength
