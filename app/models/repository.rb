# frozen_string_literal: true

class Repository < ApplicationRecord
  include Searchable

  has_many :letter_repositories, dependent: :destroy
  has_many :letters, through: :letter_repositories
end
