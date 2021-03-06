# frozen_string_literal: true

# rubocop:disable Layout/LineLength

names = [
  Faker::Movies::Lebowski.character,
  Faker::Movies::HitchhikersGuideToTheGalaxy.character,
  Faker::TvShows::AquaTeenHungerForce.character,
  Faker::TvShows::RickAndMorty.character,
  Faker::TvShows::Simpsons.character,
  Faker::Games::SuperMario.character,
  Faker::Movies::PrincessBride.character,
  Faker::Movies::StarWars.character,
  Faker::TvShows::BojackHorseman.character,
  Faker::TvShows::VentureBros.character,
  Faker::TvShows::StarTrek.character,
  Faker::TvShows::SouthPark.character
]

FactoryBot.define do
  factory :entity do
    label { names.sample }
    description { Faker::Hipster.sentence }
    legacy_pk { Faker::Number.unique.within(range: 1..100_000) }
    e_type { Entity.e_types.keys.sample }

    trait :public do
      letters { [create(:public_letter)] }
    end

    after :create do |entity|
      entity.update(label: "<i>#{entity.label}</i>") if Faker::Boolean.boolean

      parts = entity.description.split

      if Faker::Boolean.boolean && parts.count > 4
        parts[1] = "<i>#{parts[1]}"
        parts[-2] = "#{parts[-2]}</i>"

        entity.update(
          description: parts.join(' ')
        )
      end
    end

    factory :attendance_entity do
      e_type { 0 }
      properties {
        ActiveSupport::HashWithIndifferentAccess.new(
          {
            alternate_spellings: [Faker::TvShows::RuPaul.queen],
            attended_with: [
              Faker::Movies::Lebowski.character,
              Faker::Movies::HitchhikersGuideToTheGalaxy.character
            ],
            director: Faker::Movies::HitchhikersGuideToTheGalaxy.character,
            event_type: Faker::Hipster.word,
            performed_by: [Faker::Movies::HitchhikersGuideToTheGalaxy.character],
            place_date: "#{Faker::Address.city}, #{Faker::Date.between(from: 100.years.ago, to: 50.years.ago).strftime('%d %B %Y')}"
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
            alternate_spellings: [Faker::TvShows::RuPaul.queen],
            composer: Faker::Movies::HitchhikersGuideToTheGalaxy.character,
            notes: Faker::Music::Prince.lyric,
            perfrormedBy: [
              Faker::Movies::Lebowski.character
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
            alternate_spellings: [Faker::TvShows::RuPaul.queen],
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
            alternate_spellings: [Faker::TvShows::RuPaul.queen],
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
            alternate_spellings: [Faker::TvShows::RuPaul.queen],
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
            alternate_spellings: [Faker::TvShows::RuPaul.queen],
            cast: [Faker::Movies::HitchhikersGuideToTheGalaxy.character, Faker::Movies::Lebowski.character],
            city: Faker::Address.city,
            date: Faker::Date.between(from: 100.years.ago, to: 50.years.ago),
            director: Faker::Movies::Lebowski.character,
            links: [Faker::Internet.url],
            notes: Faker::Hipster.sentence,
            personnel: [Faker::Movies::HitchhikersGuideToTheGalaxy.character],
            proposal: Faker::Movies::HitchhikersGuideToTheGalaxy.marvin_quote,
            response: Faker::Movies::Lebowski.quote,
            staging_beckett: Faker::Internet.url,
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
            author: Faker::Movies::Lebowski.character,
            notes: Faker::Movies::HitchhikersGuideToTheGalaxy.marvin_quote,
            publication_information: Faker::Hipster.sentence,
            translator: Faker::Movies::HitchhikersGuideToTheGalaxy.character
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
            alternate_spellings: [Faker::TvShows::RuPaul.queen],
            artist: Faker::Movies::HitchhikersGuideToTheGalaxy.character,
            artist_alternate_spellings: [Faker::TvShows::RuPaul.queen],
            notes: Faker::Movies::HitchhikersGuideToTheGalaxy.marvin_quote,
            owner_location_accession_number_current: rand(1..1000),
            owner_location_accession_number_contemporaneous: rand(1..1000)
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
