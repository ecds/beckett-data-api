# frozen_string_literal: true

# rubocop:disable Layout/LineLength

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
      destinations: [entity],
      recipients: create_list(:person_entity, 2)
    )

    create_list(
      :letter,
      2,
      date: Faker::Date.between(from: '1957-1-1', to: '1965-12-31'),
      repositories: create_list(:repository, 1, public: true),
      origins: [entity],
      recipients: create_list(:person_entity, 2)
    )

    create_list(
      :letter,
      2,
      date: Faker::Date.between(from: '1957-1-1', to: '1965-12-31'),
      repositories: create_list(:repository, 1, public: true),
      entities: [entity],
      recipients: create_list(:person_entity, 2)
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
      destinations: [entity],
      recipients: create_list(:person_entity, 2)
    )

    expect(entity.all_letters.count).to be < Letter.count
    expect(entity.all_letters.count).to eq(15)
    expect(entity.letters.count).to eq(8)
    expect(entity.public_letters_hash.length).to eq(6)
    expect(entity.public_letters_hash[0][:recipients].length).to eq(2)
  end

  # context 'when extra properties are added' do
  #   it 'removes extra properties' do
  #     entity = create(:place_entity)
  #     entity.properties[:best_lebowski_character] = Faker::Movies::Lebowski.character
  #     expect(entity.properties).to have_key(:best_lebowski_character)
  #     entity.save
  #     expect(entity.properties).not_to have_key(:best_lebowski_character)
  #   end
  # end

  context 'when attribute wrapped in div' do
    it 'removes the div tags from attribute' do
      entity = create(:entity)
      entity.update(label: "<div>#{entity.label}</div>")
      expect(entity.label).not_to start_with('<div>')
      expect(entity.label).not_to end_with('</div>')
    end
  end

  context 'when lable contains em tag' do
  end

  # Short Displays
  context 'when type attendance' do
    it 'has short display with all properties' do
      entity = create(:attendance_entity)
      expect(
        entity.display_header
      ).to eq(
        "<strong>#{entity.event_type}</strong> #{entity.label}"
      )
    end

    it 'has short display when missing event_type' do
      entity = create(:attendance_entity)
      entity.update(event_type: nil)
      expect(entity.display_header).to eq(entity.label)
    end
  end

  # context 'when type music' do
  #   it 'has short display with all properties' do
  #     entity = create(:music_entity)
  #     entity.properties[:alternate_spellings].push(Faker::Movies::HitchhikersGuideToTheGalaxy.planet)
  #     expect(
  #       entity.display_header
  #     ).to eq(
  #       "#{entity.properties[:composer]}, #{entity.label} [#{entity.properties[:alternate_spellings].join(', ')}]"
  #     )
  #   end

  #   it 'has short display with no alternate_spellings' do
  #     entity = create(:music_entity)
  #     entity.properties[:alternate_spellings] = []
  #     expect(
  #       entity.display_header
  #     ).to eq(
  #       "#{entity.properties[:composer]}, #{entity.label}"
  #     )
  #   end

  #   it 'has short display with no composer' do
  #     entity = create(:music_entity)
  #     entity.properties[:composer] = nil
  #     expect(
  #       entity.display_header
  #     ).to eq(
  #       "#{entity.label} [#{entity.properties[:alternate_spellings].join(', ')}]"
  #     )
  #   end
  # end

  context 'when type organization' do
    it 'has short display of label in bold' do
      entity = create(:organization_entity)
      expect(entity.display_header).to eq(entity.label)
    end
  end

  context 'when type person' do
    it 'has short display with with label and life dates in bold' do
      entity = create(:person_entity)
      expect(
        entity.display_header
      ).to eq(
        "#{entity.label} #{entity.life_dates}"
      )
    end

    it 'has short display with no life_dates' do
      entity = create(:person_entity)
      entity.update(life_dates: nil)
      expect(
        entity.display_header
      ).to eq(
        entity.label
      )
    end
  end

  context 'when type place' do
    it 'has short display with label in bold' do
      entity = create(:place_entity)
      expect(
        entity.display_header
      ).to eq(
        entity.label
      )
    end
  end

  # context 'when type production' do
  #   it 'has short display with all properties' do
  #     entity = create(:production_entity)
  #     expect(
  #       entity.display_header
  #     ).to eq(
  #       "#{entity.label}, dir. #{entity.properties[:director]}, #{entity.properties[:theater]}, #{entity.properties[:city]}, #{entity.properties[:date]}"
  #     )
  #   end

  #   it 'has short display with no director' do
  #     entity = create(:production_entity)
  #     entity.properties[:director] = nil
  #     expect(
  #       entity.display_header
  #     ).to eq(
  #       "#{entity.label}, #{entity.properties[:theater]}, #{entity.properties[:city]}, #{entity.properties[:date]}"
  #     )
  #   end

  context 'when type public_event' do
    it 'has short display with label in bold' do
      entity = create(:public_event_entity)
      expect(
        entity.display_header
      ).to eq(
        entity.label
      )
    end
  end

  # context 'when type publication' do
  #   it 'has short display with all properties' do
  #     entity = create(:publication_entity)
  #     expect(
  #       entity.display_header
  #     ).to eq(
  #       "#{entity.properties[:author]}, #{entity.label}, #{entity.properties[:translator]} #{entity.properties[:publication_information]}"
  #     )
  #   end

  #   it 'has short display with no translator' do
  #     entity = create(:publication_entity)
  #     entity.properties[:translator] = nil
  #     expect(
  #       entity.display_header
  #     ).to eq(
  #       "#{entity.properties[:author]}, #{entity.label} #{entity.properties[:publication_information]}"
  #     )
  #   end

  #   it 'has short display with only label' do
  #     entity = create(:publication_entity)
  #     entity.properties[:author] = nil
  #     entity.properties[:publication_information] = nil
  #     entity.properties[:translator] = nil
  #     expect(
  #       entity.display_header
  #     ).to eq(
  #       "#{entity.label}"
  #     )
  #   end
  # end

  # context 'when type reading' do
  #   it 'has short display with all properties' do
  #     entity = create(:reading_entity)
  #     expect(
  #       entity.display_header
  #     ).to eq(
  #       "#{entity.properties[:authors].join(', ')}, #{entity.label}, #{entity.properties[:publication]}"
  #     )
  #   end

  #   it 'has short display with multiple authors' do
  #     entity = create(:reading_entity)
  #     3.times { entity.properties[:authors].push(Faker::Movies::Lebowski.character) }
  #     expect(
  #       entity.display_header
  #     ).to eq(
  #       "#{entity.properties[:authors].join(', ')}, #{entity.label}, #{entity.properties[:publication]}"
  #     )
  #   end

  #   it 'has short display with only label' do
  #     entity = create(:reading_entity)
  #     entity.properties[:authors] = []
  #     entity.properties[:publication] = nil
  #     expect(
  #       entity.display_header
  #     ).to eq(
  #       "#{entity.label}"
  #     )
  #   end
  # end

  # context 'when type translating' do
  #   it 'has short display with all properties' do
  #     entity = create(:translating_entity)
  #     expect(
  #       entity.display_header
  #     ).to eq(
  #       "#{entity.properties[:author]}, #{entity.label}, Translated into #{entity.properties[:translated_into]} by #{entity.properties[:translator]}"
  #     )
  #   end

  #   it 'has short display with no translator' do
  #     entity = create(:translating_entity)
  #     entity.properties[:translator] = nil
  #     expect(
  #       entity.display_header
  #     ).to eq(
  #       "#{entity.properties[:author]}, #{entity.label}, Translated into #{entity.properties[:translated_into]}"
  #     )
  #   end

  #   it 'has short display with label only' do
  #     entity = create(:translating_entity)
  #     entity.properties[:translator] = nil
  #     entity.properties[:author] = nil
  #     entity.properties[:translated_into] = nil
  #     expect(
  #       entity.display_header
  #     ).to eq(
  #       "#{entity.label}"
  #     )
  #   end
  # end

  # context 'when type work_of_art' do
  #   it 'has short display with all properties' do
  #     entity = create(:work_of_art_entity)
  #     expect(
  #       entity.display_header
  #     ).to eq(
  #       "#{entity.properties[:artist]}, #{entity.label}, #{entity.description}"
  #     )
  #   end

  #   it 'has short display with label only' do
  #     entity = create(:work_of_art_entity)
  #     entity.properties[:artist] = nil
  #     entity.description = nil
  #     expect(
  #       entity.display_header
  #     ).to eq(
  #       "#{entity.label}"
  #     )
  #   end
  # end

  # context 'when type writing' do
  #   it 'has short display with all properties' do
  #     entity = create(:writing_entity)
  #     expect(
  #       entity.display_header
  #     ).to eq(
  #       "#{entity.label}"
  #     )
  #   end
  # end
end

# rubocop:enable Layout/LineLength
