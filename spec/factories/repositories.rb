# frozen_string_literal: true

FactoryBot.define do
  factory :repository do
    label { Faker::University.name }
    public { Faker::Boolean.boolean }
    american { Faker::Boolean.boolean }
  end
end
