# frozen_string_literal: true

FactoryBot.define do
  factory :letter_owner do
    label { Faker::Music::Prince.band }
  end
end
