# frozen_string_literal: true

FactoryBot.define do
  factory :letter_origin do
    letter
    entity factory: :place_entity
  end
end
