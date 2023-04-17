FactoryBot.define do
  factory :medium do
    alt_text { Faker::Movies::Lebowski.quote }
    attribution { Faker::Movies::Lebowski.character }
    caption { Faker::Movies::Lebowski.quote }
    link { Faker::Internet.url }
    entity { create(:person_entity) }

    after(:build) do |medium|
      medium.image.attach(
        io: File.open(
          Rails.root.join('spec', 'factories', 'images', 'beckett.png')
        ),
        filename: 'beckett.png',
        content_type: 'image/png'
      )
    end
  end
end
