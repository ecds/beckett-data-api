# frozen_string_literal: true

class Repository < ApplicationRecord
  include Searchable

  after_save :reindex_published

  has_many :collections, dependent: :destroy

  has_many :letter_repositories, dependent: :destroy
  has_many :letters, through: :letter_repositories

  scope :published, lambda {
    where(published: true)
  }

  private

  def reindex_published
    return unless saved_change_to_attribute?(:published)

    letters.each do |letter|
      letter.update(published:)
      letter.all_entities.map(&:save)
    end
  end
end
