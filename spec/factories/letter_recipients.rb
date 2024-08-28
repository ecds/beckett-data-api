# frozen_string_literal: true

FactoryBot.define do
  factory :letter_recipient do
    letter
    entity factory: %i[entity person_entity]
  end
end
