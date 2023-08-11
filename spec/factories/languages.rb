# frozen_string_literal: true

FactoryBot.define do
  factory :language do
    label { Faker::Nation.language }
  end
end
