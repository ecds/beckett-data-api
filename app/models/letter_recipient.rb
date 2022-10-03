# frozen_string_literal: true

class LetterRecipient < ApplicationRecord
  belongs_to :entity
  belongs_to :letter
end
