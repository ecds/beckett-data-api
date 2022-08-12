# frozen_string_literal: true

class Collection < ApplicationRecord
  belongs_to :repository

  has_many :letter_collections, dependent: :destroy
  has_many :letters, -> { distinct }, through: :letter_collections

  scope :_public, lambda {
    includes(:repository)
      .where(
        repositories: {
          public: true
        }
      )
  }
end
