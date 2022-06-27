# frozen_string_literal: true

FactoryBot.define do
  factory :letter_recipient do
    association :letter, factory: :letter
    association :entity, factory: :person_entity
  end
end
