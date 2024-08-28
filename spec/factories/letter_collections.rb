# frozen_string_literal: true

FactoryBot.define do
  factory :letter_collection do
    label { Faker::Nation.language }
  end
end
