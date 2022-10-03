# frozen_string_literal: true

class LetterCollection < ApplicationRecord
  belongs_to :letter
  belongs_to :collection
end
