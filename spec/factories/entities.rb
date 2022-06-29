# frozen_string_literal: true

FactoryBot.define do
  factory :entity do
    label { Faker::Movies::Lebowski.character }
    description { Faker::Movies::Lebowski.quote }
    legacy_pk { Faker::Number.unique.within(range: 1..1000) }

    # rubocop:disable Layout/LineLength
    factory :person_entity do
      e_type { 0 }
      properties {
        {
          last_name: Faker::Name.last_name,
          first_name: Faker::Name.first_name,
          alternate_names_spellings: [],
          life_dates: "(#{Faker::Date.between(from: '1900-1-1', to: '1930-1-1').year}-#{Faker::Date.between(from: '1970-1-1', to: '1999-1-1').year})",
          description: Faker::Movies::Lebowski.quote,
          links: [
            Faker::Internet.url
          ],
          profile: Faker::Movies::Lebowski.quote,
          finding_aids: [
            Faker::Internet.url
          ],
          media: {
            images: [
              {
                link: Faker::Internet.url,
                caption: Faker::Movies::Lebowski.quote,
                attribution: Faker::Movies::Lebowski.character
              }
            ],
            videos: [
              {
                link: Faker::Internet.url,
                caption: Faker::Movies::Lebowski.quote,
                attribution: Faker::Movies::Lebowski.character
              }
            ]
          }
        }
      }
    end
    # rubocop:enable Layout/LineLength

    factory :organization_entity do
      e_type { 1 }
      label { Faker::Movies::HitchhikersGuideToTheGalaxy.planet }
      properties {
        {
          name: Faker::Movies::HitchhikersGuideToTheGalaxy.planet,
          description: Faker::Movies::Lebowski.quote,
          profile: Faker::Movies::Lebowski.quote
        }
      }
    end

    factory :place_entity do
      e_type { 2 }
      label { Faker::Movies::HitchhikersGuideToTheGalaxy.location }
      properties {
        {
          links: [
            Faker::Internet.url
          ],
          coordinates: {
            lat: Faker::Address.latitude,
            lng: Faker::Address.longitude
          },
          description: Faker::Movies::Lebowski.quote,
          alternate_spellings: []
        }
      }
    end

    factory :reading_entity do
      e_type { 6 }
      label { Faker::Book.title }
      properties {
        {
          authors: [
            Faker::Book.author
          ],
          publication: Faker::Book.publisher
        }
      }
    end

    factory :production_entity do
      e_type { 3 }
      label { Faker::Movie.title }
      properties {
        {
          director: create(:person_entity).label,
          city: create(:place_entity).label,
          date: Faker::Date.between(from: 100.years.ago, to: 50.years.ago),
          cast: [],
          notes: Faker::Hipster.sentence,
          stagingBeckett: Faker::Internet.url
        }
      }
    end

    factory :work_of_art_entity do
      e_type { 11 }
      label { Faker::Music::Prince.song }
      properties {
        {
          artist: create(:person_entity).label,
          alternate_spellings: [],
          description: Faker::Music::Prince.lyric,
          owner: create(:person_entity).label,
          location: create(:place_entity).label
        }
      }
    end

    factory :translating_entity do
      e_type { 5 }
      label { Faker::Book.title }
      properties {
        {
          author: Faker::Movies::HitchhikersGuideToTheGalaxy.character,
          translatedTitle: Faker::Movies::HitchhikersGuideToTheGalaxy.starship,
          translatedInto: Faker::Movies::HitchhikersGuideToTheGalaxy.planet,
          translators: [
            Faker::Movies::HitchhikersGuideToTheGalaxy.character
          ]
        }
      }
    end

    factory :writing_entity do
      e_type { 4 }
      label { Faker::Book.title }
      properties {
        {
          date: Faker::Date.between(from: 100.years.ago, to: 50.years.ago),
          proposal: Faker::Movies::HitchhikersGuideToTheGalaxy.quote,
          response: Faker::Movies::HitchhikersGuideToTheGalaxy.marvin_quote
        }
      }
    end

    factory :public_event_entity do
      e_type { 10 }
      label { Faker::Space.nasa_space_craft }
      properties {
        {
          title: Faker::Space.nasa_space_craft,
          date: Faker::Date.between(from: 100.years.ago, to: 50.years.ago)
        }
      }
    end

    factory :music_entity do
      e_type { 8 }
      label { Faker::Music::Prince.song }
      properties {
        {
          alternative_titles: [],
          description: Faker::Music::Prince.lyric,
          notes: Faker::Music::Prince.lyric,
          perfrormedBy: [
            create(:person_entity, label: Faker::Music::Prince.band).label
          ]
        }
      }
    end

    factory :attendance_entity do
      e_tyep { 7 }
      properties {
        {
          attended: Faker::Movies::HitchhikersGuideToTheGalaxy.marvin_quote,
          place: create(:place_entity).label,
          date: Faker::Date.between(from: 100.years.ago, to: 50.years.ago),
          attendsWith: [
            create(:person_entity).label
          ]
        }
      }
    end

    factory :publication_entity do
      e_tyep { 9 }
      properties {
        {
          author: create(:person_entity).label,
          translator: create(:person_entity).label,
          place: create(:place_entity).label,
          publisher: create(:organization_entity).label,
          date: Faker::Date.between(from: 100.years.ago, to: 50.years.ago),
          notes: Faker::Movies::HitchhikersGuideToTheGalaxy.marvin_quote
        }
      }
    end
  end
end
