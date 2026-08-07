# frozen_string_literal: true

class Letter < ApplicationRecord
  include Searchable
  include LetterCommon

  before_save :check_published
  before_destroy :remove_published
  after_save :reindex_published

  has_many :mentions, dependent: :destroy
  has_many :entities, -> { distinct }, through: :mentions

  has_many :letter_destinations, dependent: :destroy
  has_many :destinations, -> { distinct }, through: :letter_destinations, source: :entity

  has_many :letter_senders, dependent: :destroy
  has_many :senders, -> { distinct }, through: :letter_senders, source: :entity

  has_many :letter_origins, dependent: :destroy
  has_many :origins, -> { distinct }, through: :letter_origins, source: :entity

  has_many :letter_recipients, dependent: :destroy
  has_many :recipients, -> { distinct }, through: :letter_recipients, source: :entity

  has_many :letter_repositories, dependent: :destroy
  has_many :repositories, -> { distinct }, through: :letter_repositories

  has_many :letter_collections, dependent: :destroy
  has_many :collections, -> { distinct }, through: :letter_collections

  has_many :letter_languages, dependent: :destroy
  has_many :languages, -> { distinct }, through: :letter_languages

  belongs_to :letter_file, optional: true
  belongs_to :file_folder, optional: true
  belongs_to :letter_owner, optional: true
  belongs_to :letter_publisher, optional: true

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
      repositories: repositories.map(&:label),
      languages: languages.map(&:label),
      published:,
      volume: volume.to_s
    }
  end

  def all_entities
    recipients + entities + destinations + senders + origins
  end

  private

  def check_published
    self.published = repositories.any?(&:published) || letter_publisher.present?
  end

  def reindex_published
    # This is an after_save (not after_commit) callback, so unlike Searchkick's own
    # async/after_commit callbacks it isn't naturally skipped when the enclosing
    # transaction rolls back (e.g. LoadBigSamJob#dry_run). Checking a dedicated flag
    # here (rather than Searchkick.callbacks?) matters: the test suite calls
    # Searchkick.disable_callbacks once, globally, in before(:suite) - this method's
    # forced Searchkick.callbacks(:inline) below exists specifically to override that
    # for tests that need synchronous indexing, so it must not itself be gated by the
    # same global switch it's overriding.
    return if Thread.current[:big_sam_dry_run]

    if published
      published_letter = PublishedLetter.find(id)
      Searchkick.callbacks(:inline) { published_letter&.reindex }
      PublishedLetter.reindex if ENV['RAILS_ENV'] == 'test'
    else
      remove_published
    end
  end

  # Called after destory or when letter might have been unpublished
  def remove_published
    return unless published

    PublishedLetter.searchkick_index.remove(id)
  rescue NoMethodError
    # This happens during model specs when it skips the indexing
    nil
  end
end
