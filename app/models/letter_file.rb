# frozen_string_literal: true

class LetterFile < ApplicationRecord
  has_many :letters, dependent: :nullify
end
