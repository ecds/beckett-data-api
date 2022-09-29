# frozen_string_literal: true

class Letter < ApplicationRecord
  include Searchable

  # serialize :mentions_hash, HashWithIndifferentAccess

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

  belongs_to :letter_file, optional: true
  belongs_to :file_folder, optional: true
  belongs_to :letter_owner, optional: true
  belongs_to :letter_publisher, optional: true

  # attr_readonly :content

  enum :language, { english: 0, french: 1, german: 2, italian: 3 }

  scope :published, lambda {
    includes(:repositories)
      .references(:repositories)
      .where(
        repositories: {
          published: true
        }
      )
      # .where('letters.date BETWEEN ? AND ?', DateTime.new(1957), DateTime.new(1965, 12).at_end_of_month)
  }

  scope :between, lambda {|min, max|
    where('letters.date >= ? AND letters.date <= ?', min, max)
  }

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
      language:,
      published: repositories.any?(&:published),
      volume:
    }
  end

  def should_index?
    return if date.nil?

    repositories.any?(&:published)
    # date.between? DateTime.new(1957), DateTime.new(1965, 12).at_end_of_month and repositories.any?(&:published)
  end
end
