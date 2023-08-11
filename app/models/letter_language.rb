# frozen_string_literal: true

class LetterLanguage < ApplicationRecord
  belongs_to :letter
  belongs_to :language
end
