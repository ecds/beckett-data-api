# frozen_string_literal: true

FactoryBot.define do
  factory :mention do
    association :entity, factory: :entity
    association :letter, factory: :letter
  end
end
