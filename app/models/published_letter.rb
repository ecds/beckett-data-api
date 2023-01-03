# frozen_string_literal: true

class PublishedLetter < ApplicationRecord
  include Searchable
  include LetterCommon

  self.table_name = 'letters'

  has_many :mentions, foreign_key: 'letter_id', inverse_of: :letter, dependent: :destroy
  has_many :entities, -> { distinct }, through: :mentions

  has_many :letter_destinations, foreign_key: 'letter_id', inverse_of: :letter, dependent: :destroy
  has_many :destinations, -> { distinct }, through: :letter_destinations, source: :entity

  has_many :letter_senders, foreign_key: 'letter_id', inverse_of: :letter, dependent: :destroy
  has_many :senders, -> { distinct }, through: :letter_senders, source: :entity

  has_many :letter_origins, foreign_key: 'letter_id', inverse_of: :letter, dependent: :destroy
  has_many :origins, -> { distinct }, through: :letter_origins, source: :entity

  has_many :letter_recipients, foreign_key: 'letter_id', inverse_of: :letter, dependent: :destroy
  has_many :recipients, -> { distinct }, through: :letter_recipients, source: :entity

  has_many :letter_repositories, foreign_key: 'letter_id', inverse_of: :letter, dependent: :destroy
  has_many :repositories, -> { distinct }, through: :letter_repositories

  has_many :letter_collections, foreign_key: 'letter_id', inverse_of: :letter, dependent: :destroy
  has_many :collections, -> { distinct }, through: :letter_collections

  belongs_to :letter_file, foreign_key: 'letter_id', inverse_of: :letter, optional: true
  belongs_to :file_folder, foreign_key: 'letter_id', inverse_of: :letter, optional: true
  belongs_to :letter_owner, foreign_key: 'letter_id', inverse_of: :letter, optional: true
  belongs_to :letter_publisher, foreign_key: 'letter_id', inverse_of: :letter, optional: true

  def self.default_scope
    where(published: true)
  end

  def search_data
    {
      id_path: url_path,
      date:,
      label:,
      recipients: recipients.map(&:clean_label),
      mentions: mentions_hash,
      origins: origins.map(&:label),
      origins_clean: origins.map(&:clean_label),
      destinations: destinations.map(&:label),
      destinations_clean: destinations.map(&:clean_label),
      repositories: repositories.published.map(&:label),
      language:,
      published:,
      volume: volume.to_s
    }
  end

  def should_index?
    published
  end
end
