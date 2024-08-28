# frozen_string_literal: true

class LetterRepository < ApplicationRecord
  belongs_to :letter
  belongs_to :repository

  belongs_to :collection, optional: true

  enum :placement, {
    premiere: 1,
    deuxieme: 2,
    troisieme: 3
  }
end
