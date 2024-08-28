# frozen_string_literal: true

FactoryBot.define do
  factory :file_folder do
    label { Faker::Nation.language }
  end
end
