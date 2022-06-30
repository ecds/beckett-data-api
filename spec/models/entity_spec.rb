# frozen_string_literal: true

require 'rails_helper'

RSpec.describe Entity, type: :model do
  it 'creates a hash of pubically avaliable letters where entity is mentioned' do
    entity = create(:place_entity)

    create_list(:letter, 5)

    create_list(
      :letter,
      4,
      date: Faker::Date.between(from: '1900-1-1', to: '1930-1-1'),
      repositories: create_list(:repository, 1, public: true),
      entities: [entity]
    )

    create_list(
      :letter,
      2,
      date: Faker::Date.between(from: '1957-1-1', to: '1965-12-31'),
      repositories: create_list(:repository, 1, public: true),
      destinations: [entity]
    )

    create_list(
      :letter,
      2,
      date: Faker::Date.between(from: '1957-1-1', to: '1965-12-31'),
      repositories: create_list(:repository, 1, public: true),
      origins: [entity]
    )

    create_list(
      :letter,
      2,
      date: Faker::Date.between(from: '1957-1-1', to: '1965-12-31'),
      repositories: create_list(:repository, 1, public: true),
      entities: [entity]
    )

    create_list(
      :letter,
      2,
      date: Faker::Date.between(from: '1957-1-1', to: '1965-12-31'),
      repositories: create_list(:repository, 1, public: false),
      entities: [entity]
    )

    create_list(
      :letter,
      3,
      date: Faker::Date.between(from: '1966-1-1', to: '2000-12-31'),
      repositories: create_list(:repository, 1, public: false),
      destinations: [entity]
    )

    expect(entity.all_letters.count).to be < Letter.count
    expect(entity.all_letters.count).to eq(15)
    expect(entity.letters.count).to eq(8)
    expect(entity.public_letters_hash.length).to eq(6)
  end

  context 'when type attendance' do
    it 'has short display with all properties' do
      entity = create(:attendance_entity)
      expect(
        entity.short_display
      ).to eq(
        "<span>#{entity.properties[:eventType]}, #{entity.label}, #{entity.properties[:placeDate]}.</span>"
      )
    end

    it 'has short display when missing eventType' do
      entity = create(:attendance_entity)
      entity.properties[:eventType] = nil
      expect(entity.short_display).to eq("<span>#{entity.label}, #{entity.properties[:placeDate]}.</span>")
    end

    it 'has short display when missing placeDate' do
      entity = create(:attendance_entity)
      entity.properties[:placeDate] = nil
      expect(
        entity.short_display
      ).to eq(
        "<span>#{entity.properties[:eventType]}, #{entity.label}.</span>"
      )
    end
  end

  context 'when type music' do
    it 'has short display with all properties' do
      entity = create(:music_entity)
      entity.properties[:alternativeTitles].push(Faker::Movies::HitchhikersGuideToTheGalaxy.planet)
      expect(
        entity.short_display
      ).to eq(
        "<span>#{entity.properties[:composer]}, #{entity.label} [#{entity.properties[:alternativeTitles].join(', ')}].</span>"
      )
    end

    it 'has short display with no alternativeTitles' do
      entity = create(:music_entity)
      entity.properties[:alternativeTitles] = []
      expect(
        entity.short_display
      ).to eq(
        "<span>#{entity.properties[:composer]}, #{entity.label}.</span>"
      )
    end

    it 'has short display with no composer' do
      entity = create(:music_entity)
      entity.properties[:composer] = nil
      expect(
        entity.short_display
      ).to eq(
        "<span>#{entity.label} [#{entity.properties[:alternativeTitles].join(', ')}].</span>"
      )
    end
  end

  context 'when type person' do
    it 'has short display with all properties' do
      entity = create(:person_entity)
      expect(
        entity.short_display
      ).to eq(
        "<span>#{entity.label} #{entity.properties[:lifeDates]}. #{entity.description}.</span>"
      )
    end
  end
end
