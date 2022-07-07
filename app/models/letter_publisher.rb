class LetterPublisher < ApplicationRecord
  has_many :letters, dependent: :nullify
end
