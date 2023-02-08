# frozen_string_literal: true

class Medium < ApplicationRecord
  belongs_to :entity
  has_one_attached :image
end
