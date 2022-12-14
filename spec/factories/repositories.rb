# frozen_string_literal: true

FactoryBot.define do
  factory :repository do
    label { Faker::University.name }
    published { Faker::Boolean.boolean }
    american { Faker::Boolean.boolean }

    factory :published_repository do
      published { true }
    end
  end
end
