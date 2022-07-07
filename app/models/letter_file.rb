class LetterFile < ApplicationRecord
  has_many :letters, dependent: :nullify
end
