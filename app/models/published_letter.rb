# frozen_string_literal: true

class PublishedLetter < ApplicationRecord
  include Searchable
  include LetterCommon

  self.table_name = 'letters'

  def self.default_scope
    where(published: true)
  end

  def search_data
    {
      id_path: url_path,
      date:,
      label:,
      recipients: recipient_list,
      mentions: mentions_hash,
      origins: origins.map(&:label),
      origins_clean: origins.map(&:clean_label),
      destinations: destinations.map(&:label),
      destinations_clean: destinations.map(&:clean_label),
      repositories: repositories.select(&:published).map(&:label),
      languages: languages.map(&:label),
      published:,
      volume: volume.to_s,
      other_publishers:
    }
  end

  def should_index?
    published
  end

  def other_publishers
    return if letter_publisher.nil?

    doc = Nokogiri::HTML(letter_publisher.label)
    text = doc.css('i').map(&:text)
    text ? text.map(&:strip).reject!(&:empty?) : [letter_publisher.label]
  end
end
