# frozen_string_literal: true

FactoryBot.define do
  factory :collection do
    label { Faker::Hipster.word }
  end
end
