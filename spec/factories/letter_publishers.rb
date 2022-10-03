# frozen_string_literal: true

FactoryBot.define do
  factory :letter_publisher do
    label { Faker::Music::Prince.band }
  end
end
