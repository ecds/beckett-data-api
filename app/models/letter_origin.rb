# frozen_string_literal: true

class LetterOrigin < ApplicationRecord
  belongs_to :entity
  belongs_to :letter
end
