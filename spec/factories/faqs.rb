# frozen_string_literal: true

FactoryBot.define do
  factory :faq do
    question { Faker::Beer.hop }
    answer { Faker::Beer.yeast }
  end
end
