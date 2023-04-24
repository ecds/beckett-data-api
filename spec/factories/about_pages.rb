# frozen_string_literal: true

FactoryBot.define do
  factory :about_page do
    title { Faker::Beer.hop }
    body { Faker::Beer.yeast }
  end
end
