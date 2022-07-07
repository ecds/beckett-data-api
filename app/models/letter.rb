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

  belongs_to :letter_file, optional: true
  belongs_to :letter_owner, optional: true
  belongs_to :letter_publisher, optional: true

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
      recipients: recipients.map(&:clean_label),
      mentions: entities.map(&:clean_label),
      origins: origins.map(&:clean_label),
      destinations: destinations.map(&:clean_label),
      repositories: repositories.map(&:label),
      language: language
    }
  end

  def should_index?
    date.between? DateTime.new(1957), DateTime.new(1965, 12).at_end_of_month and repositories.any?(&:public)
  end

  def volume
    case date
    when DateTime.new(1929)..DateTime.new(1940, 12).at_end_of_month
      '1929-1940'
    when DateTime.new(1941)..DateTime.new(1956, 12).at_end_of_month
      '1941-1956'
    when DateTime.new(1957)..DateTime.new(1965, 12).at_end_of_month
      '1957-1965'
    when DateTime.new(1966)..DateTime.new(1989, 12).at_end_of_month
      '1966-1989'
    else
      'unknown'
    end
  end
end
