# frozen_string_literal: true

# rubocop:disable Layout/LineLength

FactoryBot.define do
  factory :entity do
    label { Faker::Movies::HitchhikersGuideToTheGalaxy.character }
    description { Faker::Hipster.sentence.gsub!(/[^0-9A-Za-z\s]/, '') }
    legacy_pk { Faker::Number.unique.within(range: 1..100_000) }
    e_type { Entity.e_types.keys[0..11].sample }

    trait :published do
      letters { [create(:published_letter)] }
    end

    after :create do |entity|
      control = ['Reynoldstown', 'Grant Park']

      unless control.include? entity.label
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
    end

    factory :attendance_entity do
      e_type { 0 }
      label { Faker::Movie.title }
      alternate_names { [Faker::TvShows::RuPaul.queen] }
      attended_with {
        [
          Faker::Movies::Lebowski.character,
          Faker::Movies::HitchhikersGuideToTheGalaxy.character
        ]
      }
      director { Faker::Movies::HitchhikersGuideToTheGalaxy.character }
      event_type { rand(0..3) }
      performed_by { [Faker::Movies::HitchhikersGuideToTheGalaxy.character] }
      place_date { "#{Faker::Address.city}, #{Faker::Date.between(from: 100.years.ago, to: 50.years.ago).strftime('%d %B %Y')}" }
      notes { Faker::Music::Prince.lyric }
    end

    factory :music_entity do
      e_type { 1 }
      label { Faker::Music::Prince.song }
      alternate_names { [Faker::TvShows::RuPaul.queen] }
      composer { Faker::Movies::HitchhikersGuideToTheGalaxy.character }
      notes { Faker::Music::Prince.lyric }
      performed_by { [Faker::Movies::Lebowski.character] }
      links { [Faker::Internet.url] }
    end

    factory :organization_entity do
      e_type { 2 }
      label { Faker::Movies::HitchhikersGuideToTheGalaxy.planet }
      profile { Faker::Movies::HitchhikersGuideToTheGalaxy.quote }
      alternate_names { [Faker::TvShows::RuPaul.queen] }
      notes { Faker::Music::Prince.lyric }
      description { Faker::Movies::HitchhikersGuideToTheGalaxy.marvin_quote }
    end

    factory :person_entity do
      e_type { 3 }
      profile { Faker::Movies::HitchhikersGuideToTheGalaxy.quote }
      alternate_names { [Faker::TvShows::RuPaul.queen] }
      alternate_spellings { [Faker::TvShows::RuPaul.queen] }
      first_name { Faker::Name.first_name }
      last_name { Faker::Name.last_name }
      life_dates { "#{Faker::Date.between(from: '1900-1-1', to: '1930-1-1').year}-#{Faker::Date.between(from: '1970-1-1', to: '1999-1-1').year}" }
      description { Faker::Movies::HitchhikersGuideToTheGalaxy.marvin_quote }
      links { [Faker::Internet.url] }
    end

    factory :place_entity do
      e_type { 4 }
      label { Faker::Movies::HitchhikersGuideToTheGalaxy.location }
      alternate_spellings { [Faker::TvShows::RuPaul.queen] }
      links { [Faker::Internet.url] }
    end

    factory :production_entity do
      e_type { 5 }
      label { Faker::Movie.title }
      alternate_spellings { [Faker::TvShows::RuPaul.queen] }
      cast { [Faker::Movies::HitchhikersGuideToTheGalaxy.character, Faker::Movies::Lebowski.character] }
      city { Faker::Address.city }
      date_str { Faker::Date.between(from: 100.years.ago, to: 50.years.ago).to_s }
      director { Faker::Movies::Lebowski.character }
      links { [Faker::Internet.url] }
      notes { Faker::Hipster.sentence }
      personnel { [Faker::Movies::HitchhikersGuideToTheGalaxy.character] }
      proposal { Faker::Movies::HitchhikersGuideToTheGalaxy.marvin_quote }
      response { Faker::Movies::HitchhikersGuideToTheGalaxy.quote }
      reason { Faker::Music::Prince.lyric }
      theater { Faker::Movies::HitchhikersGuideToTheGalaxy.starship }
    end

    factory :public_event_entity do
      e_type { 6 }
      label { Faker::Space.nasa_space_craft }
      date_str { Faker::Date.between(from: 100.years.ago, to: 50.years.ago).to_s }
      links { [Faker::Internet.url] }
      description { Faker::Music::Prince.lyric }
    end

    factory :publication_entity do
      e_type { 7 }
      label { Faker::Book.publisher }
      authors { [Faker::Movies::Lebowski.character] }
      notes { Faker::Movies::HitchhikersGuideToTheGalaxy.marvin_quote }
      publication_information { Faker::Hipster.sentence }
      translators { [Faker::Movies::HitchhikersGuideToTheGalaxy.character] }
    end

    factory :reading_entity do
      e_type { 8 }
      label { Faker::Book.title }
      authors { [Faker::Book.author] }
      notes { Faker::Movies::HitchhikersGuideToTheGalaxy.marvin_quote }
      publication_information { Faker::Book.publisher }
      publication_format { Faker::Hipster.word }
    end

    factory :translating_entity do
      e_type { 9 }
      label { Faker::Book.title }
      authors { [Faker::Movies::HitchhikersGuideToTheGalaxy.character] }
      notes { Faker::Movies::HitchhikersGuideToTheGalaxy.marvin_quote }
      translated_title { Faker::Movies::HitchhikersGuideToTheGalaxy.starship }
      translated_into { rand(0..29) }
      translators { [Faker::Movies::HitchhikersGuideToTheGalaxy.character] }
    end

    factory :work_of_art_entity do
      e_type { 10 }
      label { Faker::Music::Prince.song }
      alternate_names { [Faker::TvShows::RuPaul.queen] }
      artist { Faker::Movies::HitchhikersGuideToTheGalaxy.character }
      artist_alternate_spellings { [Faker::TvShows::RuPaul.queen] }
      notes { Faker::Movies::HitchhikersGuideToTheGalaxy.marvin_quote }
      owner_location { Faker::Movies::HitchhikersGuideToTheGalaxy.starship }
      owner_location_current { Faker::Movies::HitchhikersGuideToTheGalaxy.starship }
      links { [Faker::Internet.url] }
    end

    factory :writing_entity do
      e_type { 11 }
      label { Faker::Book.title }
      date_str { Faker::Date.between(from: 100.years.ago, to: 50.years.ago).to_s }
      proposal { Faker::Movies::HitchhikersGuideToTheGalaxy.quote }
      translators { [Faker::Movies::HitchhikersGuideToTheGalaxy.character] }
      notes { Faker::Movies::HitchhikersGuideToTheGalaxy.marvin_quote }
      links { [Faker::Internet.url] }
      publication_information { Faker::Book.publisher }
    end
  end
end
# rubocop:enable Layout/LineLength
