# frozen_string_literal: true

class Collection < ApplicationRecord
  belongs_to :repository

  has_many :letter_collections, dependent: :destroy
  has_many :letters, -> { distinct }, through: :letter_collections

  scope :published, lambda {
    includes(:repository)
      .where(
        repositories: {
          published: true
        }
      )
  }
end
