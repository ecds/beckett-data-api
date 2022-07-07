class LetterOwner < ApplicationRecord
  has_many :letters, dependent: :nullify
end
