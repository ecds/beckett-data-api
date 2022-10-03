# frozen_string_literal: true

class LetterSender < ApplicationRecord
  belongs_to :entity
  belongs_to :letter
end
