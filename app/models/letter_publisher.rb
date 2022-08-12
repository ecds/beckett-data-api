# frozen_string_literal: true

class LetterPublisher < ApplicationRecord
  has_many :letters, dependent: :nullify
end
