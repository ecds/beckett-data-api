# frozen_string_literal: true

class Letter < ApplicationRecord
  include Searchable

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

  enum :language, { english: 0, french: 1, german: 2, italian: 3 }

  scope :_public, lambda {
    includes(:repositories)
      .references(:repositories)
      .where(
        repositories: {
          public: true
        }
      )
      .where('letters.date BETWEEN ? AND ?', DateTime.new(1957), DateTime.new(1965, 12).at_end_of_month)
  }

  def search_data
    {
      date: date,
      recipients: recipients.map(&:label),
      mentions: entities.map(&:label),
      origins: origins.map(&:label),
      destinations: destinations.map(&:label),
      repositories: repositories.map(&:label),
      language: language
    }
  end

  def should_index?
    date.between? DateTime.new(1957), DateTime.new(1965, 12).at_end_of_month and repositories.any?(&:public)
  end
end
