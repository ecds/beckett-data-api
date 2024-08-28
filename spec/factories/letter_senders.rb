# frozen_string_literal: true

FactoryBot.define do
  factory :letter_sender do
    letter
    entity factory: :person_entity
  end
end
