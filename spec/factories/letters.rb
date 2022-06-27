# frozen_string_literal: true

FactoryBot.define do
  factory :letter do
    date { Faker::Date.between(from: '1950-01-01', to: '1988-12-31') }
    addressed_to { Faker::Address.full_address }
    addressed_from { Faker::Address.full_address }
    physical_desc { Faker::Lorem.paragraph }
  end
end
