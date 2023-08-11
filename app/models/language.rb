# frozen_string_literal: true

class Language < ApplicationRecord
  has_many :letter_languages, dependent: :destroy
  has_many :letters, -> { distinct }, through: :letter_languages
end
