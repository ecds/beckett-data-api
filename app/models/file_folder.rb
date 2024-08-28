# frozen_string_literal: true

class FileFolder < ApplicationRecord
  has_many :letters, dependent: :nullify
end
