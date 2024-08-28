# frozen_string_literal: true

FactoryBot.define do
  factory :medium do
    alt_text { Faker::Movies::Lebowski.quote }
    attribution { Faker::Movies::Lebowski.character }
    caption { Faker::Movies::Lebowski.quote }
    link { Faker::Internet.url }
    entity factory: :person_entity

    after(:build) do |medium|
      medium.image.attach(
        io: Rails.root.join('spec', 'factories', 'images', 'beckett.png').open,
        filename: 'beckett.png',
        content_type: 'image/png'
      )
    end
  end
end
