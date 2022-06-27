# frozen_string_literal: true

class Mention < ApplicationRecord
  belongs_to :entity
  belongs_to :letter
end
