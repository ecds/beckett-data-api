# frozen_string_literal: true

FactoryBot.define do
  factory :event_type do
    label { Faker::Nation.language }
  end
end
