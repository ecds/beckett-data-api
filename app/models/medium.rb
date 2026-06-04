# frozen_string_literal: true

class Medium < ApplicationRecord
  before_save :populate_filename

  belongs_to :entity
  has_one_attached :image

  private

  def populate_filename
    self.filename = image.blob&.filename
  end
end
