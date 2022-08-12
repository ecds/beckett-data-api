# frozen_string_literal: true

class LetterOwner < ApplicationRecord
  has_many :letters, dependent: :nullify
end
