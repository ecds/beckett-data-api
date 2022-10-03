# frozen_string_literal: true

class LetterRepository < ApplicationRecord
  belongs_to :letter
  belongs_to :repository
end
