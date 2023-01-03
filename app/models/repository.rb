# frozen_string_literal: true

class Repository < ApplicationRecord
  include Searchable

  has_many :collections, dependent: :destroy

  has_many :letter_repositories, dependent: :destroy
  has_many :letters, through: :letter_repositories

  scope :published, lambda {
    where(published: true)
  }
end
