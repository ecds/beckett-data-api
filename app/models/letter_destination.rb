# frozen_string_literal: true

class LetterDestination < ApplicationRecord
  belongs_to :entity
  belongs_to :letter
end
