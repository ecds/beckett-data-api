# frozen_string_literal: true

FactoryBot.define do
  factory :letter_origin do
    association :letter, factory: :letter
    association :entity, factory: :place_entity
  end
end
