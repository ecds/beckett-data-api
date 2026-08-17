# frozen_string_literal: true

class Letter < ApplicationRecord
  include Searchable
  include LetterCommon

  before_save :check_published
  before_destroy :remove_published
  after_save :reindex_published

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
      volume: volume.to_s,
      fuck: 'me'
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
