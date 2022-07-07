# frozen_string_literal: true

# rubocop:disable Layout/LineLength

FactoryBot.define do
  factory :entity do
    label { Faker::Movies::Lebowski.character }
    description { Faker::Hipster.sentence }
    legacy_pk { Faker::Number.unique.within(range: 1..100_000) }
    e_type { Faker::Number.within(range: 0..11) }

    factory :attendance_entity do
      e_type { 0 }
      properties {
        ActiveSupport::HashWithIndifferentAccess.new(
          {
            alternateSpellings: [Faker::Movies::HitchhikersGuideToTheGalaxy.planet],
            attendsWith: [
              create(:person_entity).label
            ],
            director: Faker::Movies::HitchhikersGuideToTheGalaxy.character,
            eventType: Faker::Hipster.word,
            performedBy: [Faker::Movies::HitchhikersGuideToTheGalaxy.character],
            placeDate: "#{Faker::Address.city}, #{Faker::Date.between(from: 100.years.ago, to: 50.years.ago).strftime('%d %B %Y')}"
          }
        )
      }
    end

    factory :music_entity do
      e_type { 1 }
      label { Faker::Music::Prince.song }
      properties {
        ActiveSupport::HashWithIndifferentAccess.new(
          {
            alternateSpellings: [Faker::Movies::HitchhikersGuideToTheGalaxy.specie],
            composer: Faker::Movies::HitchhikersGuideToTheGalaxy.character,
            notes: Faker::Music::Prince.lyric,
            perfrormedBy: [
              create(:person_entity, label: Faker::Music::Prince.band).label
            ]
          }
        )
      }
    end

    factory :organization_entity do
      e_type { 2 }
      label { Faker::Movies::HitchhikersGuideToTheGalaxy.planet }
      properties {
        ActiveSupport::HashWithIndifferentAccess.new(
          {
            alternateSpellings: [Faker::Movies::HitchhikersGuideToTheGalaxy.character],
            profile: Faker::Movies::Lebowski.quote
          }
        )
      }
    end

    factory :person_entity do
      e_type { 3 }
      properties {
        ActiveSupport::HashWithIndifferentAccess.new(
          {
            alternateSpellings: [Faker::Movies::Lebowski.character],
            firstName: Faker::Name.first_name,
            lastName: Faker::Name.last_name,
            lifeDates: "(#{Faker::Date.between(from: '1900-1-1', to: '1930-1-1').year}-#{Faker::Date.between(from: '1970-1-1', to: '1999-1-1').year})",
            description: Faker::Movies::Lebowski.quote,
            links: [
              Faker::Internet.url
            ],
            profile: Faker::Movies::Lebowski.quote,
            findingAids: [
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
        )
      }
    end

    factory :place_entity do
      e_type { 4 }
      label { Faker::Movies::HitchhikersGuideToTheGalaxy.location }
      properties {
        ActiveSupport::HashWithIndifferentAccess.new(
          {
            alternateSpellings: [],
            links: [Faker::Internet.url]
          }
        )
      }
    end

    factory :production_entity do
      e_type { 5 }
      label { Faker::Movie.title }
      properties {
        ActiveSupport::HashWithIndifferentAccess.new(
          {
            alternateSpellings: [],
            cast: [Faker::Movies::HitchhikersGuideToTheGalaxy.character, Faker::Movies::Lebowski.character],
            city: create(:place_entity).label,
            date: Faker::Date.between(from: 100.years.ago, to: 50.years.ago),
            director: create(:person_entity).label,
            links: [Faker::Internet.url],
            notes: Faker::Hipster.sentence,
            personnel: [Faker::Internet.url],
            proposal: Faker::Movies::HitchhikersGuideToTheGalaxy.marvin_quote,
            response: Faker::Movies::Lebowski.quote,
            stagingBeckett: Faker::Internet.url,
            theater: Faker::Movies::HitchhikersGuideToTheGalaxy.starship
          }
        )
      }
    end

    factory :public_event_entity do
      e_type { 6 }
      label { Faker::Space.nasa_space_craft }
      properties {
        ActiveSupport::HashWithIndifferentAccess.new(
          {
            date: Faker::Date.between(from: 100.years.ago, to: 50.years.ago)
          }
        )
      }
    end

    factory :publication_entity do
      e_type { 7 }
      properties {
        ActiveSupport::HashWithIndifferentAccess.new(
          {
            author: create(:person_entity).label,
            notes: Faker::Movies::HitchhikersGuideToTheGalaxy.marvin_quote,
            publicationInformation: Faker::Hipster.sentence,
            translator: create(:person_entity).label
          }
        )
      }
    end

    factory :reading_entity do
      e_type { 8 }
      label { Faker::Book.title }
      properties {
        ActiveSupport::HashWithIndifferentAccess.new(
          {
            authors: [Faker::Book.author],
            comment: Faker::Movies::HitchhikersGuideToTheGalaxy.marvin_quote,
            publication: Faker::Book.publisher,
            publicationFormat: Faker::Hipster.word
          }
        )
      }
    end

    factory :translating_entity do
      e_type { 9 }
      label { Faker::Book.title }
      properties {
        ActiveSupport::HashWithIndifferentAccess.new(
          {
            author: Faker::Movies::HitchhikersGuideToTheGalaxy.character,
            comments: Faker::Movies::HitchhikersGuideToTheGalaxy.marvin_quote,
            translatedTitle: Faker::Movies::HitchhikersGuideToTheGalaxy.starship,
            translatedInto: Faker::Movies::HitchhikersGuideToTheGalaxy.planet,
            translator: Faker::Movies::HitchhikersGuideToTheGalaxy.character
          }
        )
      }
    end

    factory :work_of_art_entity do
      e_type { 10 }
      label { Faker::Music::Prince.song }
      properties {
        ActiveSupport::HashWithIndifferentAccess.new(
          {
            alternateSpellings: [Faker::Movies::HitchhikersGuideToTheGalaxy.planet],
            artist: create(:person_entity).label,
            artistAlternateSpellings: [Faker::Movies::Lebowski.character],
            notes: Faker::Movies::HitchhikersGuideToTheGalaxy.marvin_quote,
            ownerLocationAccessionNumberCurrent: Faker::Number.unique.within(range: 1..1000),
            ownerLocationAccessionNumberContemporaneous: Faker::Number.unique.within(range: 1..1000)
          }
        )
      }
    end

    factory :writing_entity do
      e_type { 11 }
      label { Faker::Book.title }
      properties {
        ActiveSupport::HashWithIndifferentAccess.new(
          {
            date: Faker::Date.between(from: 100.years.ago, to: 50.years.ago),
            proposal: Faker::Movies::HitchhikersGuideToTheGalaxy.quote,
            notes: Faker::Movies::HitchhikersGuideToTheGalaxy.marvin_quote,
            beckettDigitalManuscriptProject: Faker::Internet.url
          }
        )
      }
    end
  end
end
# rubocop:enable Layout/LineLength
