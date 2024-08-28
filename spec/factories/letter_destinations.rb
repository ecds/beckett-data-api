# frozen_string_literal: true

FactoryBot.define do
  factory :letter_destination do
    letter
    entity factory: %i[entity place_entity]
  end
end
