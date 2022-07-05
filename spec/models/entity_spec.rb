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

  context 'when properties are added with non-camel keys' do
    it 'camealizes key when dashes are present' do
      entity = create(:person_entity)
      entity.properties['alternate-spellings'] = entity.properties.delete(:alternateSpellings)
      expect(entity.properties).to have_key('alternate-spellings')
      expect(entity.properties).not_to have_key(:alternateSpellings)
      entity.save
      expect(entity.properties).not_to have_key('alternate-spellings')
      expect(entity.properties).to have_key(:alternateSpellings)
    end

    it 'camealizes key when underscores are present' do
      entity = create(:person_entity)
      entity.properties['alternate_spellings'] = entity.properties.delete(:alternateSpellings)
      expect(entity.properties).to have_key('alternate_spellings')
      expect(entity.properties).not_to have_key(:alternateSpellings)
      entity.save
      expect(entity.properties).not_to have_key('alternate_spellings')
      expect(entity.properties).to have_key(:alternateSpellings)
    end

    it 'camealizes key whit first character lower' do
      entity = create(:person_entity)
      entity.properties['Alternate-Spellings'] = entity.properties.delete(:alternateSpellings)
      expect(entity.properties).to have_key('Alternate-Spellings')
      expect(entity.properties).not_to have_key(:alternateSpellings)
      entity.save
      expect(entity.properties).not_to have_key('Alternate-Spellings')
      expect(entity.properties).to have_key(:alternateSpellings)
    end
  end

  context 'when extra properties are added' do
    it 'removes extra properties' do
      entity = create(:place_entity)
      entity.properties[:bestLebowskiCharacter] = Faker::Movies::Lebowski.character
      expect(entity.properties).to have_key(:bestLebowskiCharacter)
      entity.save
      expect(entity.properties).not_to have_key(:bestLebowskiCharacter)
    end
  end

  # Short Displays
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
      entity.properties[:alternateSpellings].push(Faker::Movies::HitchhikersGuideToTheGalaxy.planet)
      expect(
        entity.short_display
      ).to eq(
        "<span>#{entity.properties[:composer]}, #{entity.label} [#{entity.properties[:alternateSpellings].join(', ')}].</span>"
      )
    end

    it 'has short display with no alternateSpellings' do
      entity = create(:music_entity)
      entity.properties[:alternateSpellings] = []
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
        "<span>#{entity.label} [#{entity.properties[:alternateSpellings].join(', ')}].</span>"
      )
    end
  end

  context 'when type organization' do
    it 'has short display with all properties' do
      entity = create(:organization_entity)
      expect(
        entity.short_display
      ).to eq(
        "<span>#{entity.label}, #{entity.properties[:alternateSpellings].join(', ')}.</span>"
      )
    end

    it 'has short display with multiple alternate spelling' do
      entity = create(:organization_entity)
      entity.properties[:alternateSpellings].push(Faker::Movies::HitchhikersGuideToTheGalaxy.character)
      expect(
        entity.short_display
      ).to eq(
        "<span>#{entity.label}, #{entity.properties[:alternateSpellings].join(', ')}.</span>"
      )
    end

    it 'has short display with label only' do
      entity = create(:organization_entity)
      entity.properties[:alternateSpellings] = []
      expect(
        entity.short_display
      ).to eq(
        "<span>#{entity.label}.</span>"
      )
    end
  end

  context 'when type person' do
    it 'has short display with all properties' do
      entity = create(:person_entity)
      expect(
        entity.short_display
      ).to eq(
        "<span>#{entity.label} #{entity.properties[:lifeDates]}. #{entity.description}</span>"
      )
      expect(entity.short_display).not_to end_with('..')
    end

    it 'has short display with no lifeDates' do
      entity = create(:person_entity)
      entity.properties[:lifeDates] = nil
      expect(
        entity.short_display
      ).to eq(
        "<span>#{entity.label}. #{entity.description}</span>"
      )
      expect(entity.short_display).not_to end_with('..')
    end

    it 'has short display with no lifeDates and no description' do
      entity = create(:person_entity)
      entity.properties[:lifeDates] = nil
      entity.description = nil
      expect(
        entity.short_display
      ).to eq(
        "<span>#{entity.label}.</span>"
      )
      expect(entity.short_display).not_to end_with('..')
    end

    it 'has short display with no description' do
      entity = create(:person_entity)
      entity.description = nil
      expect(
        entity.short_display
      ).to eq(
        "<span>#{entity.label} #{entity.properties[:lifeDates]}.</span>"
      )
      expect(entity.short_display).not_to end_with('..')
    end
  end

  context 'when type place' do
    it 'has short display with all properties' do
      entity = create(:place_entity)
      expect(
        entity.short_display
      ).to eq(
        "<span>#{entity.label}.</span>"
      )
    end
  end

  context 'when type production' do
    it 'has short display with all properties' do
      entity = create(:production_entity)
      expect(
        entity.short_display
      ).to eq(
        "<span>#{entity.label}, dir. #{entity.properties[:director]}, #{entity.properties[:theater]}, #{entity.properties[:city]}, #{entity.properties[:date]}.</span>"
      )
    end

    it 'has short display with no director' do
      entity = create(:production_entity)
      entity.properties[:director] = nil
      expect(
        entity.short_display
      ).to eq(
        "<span>#{entity.label}, #{entity.properties[:theater]}, #{entity.properties[:city]}, #{entity.properties[:date]}.</span>"
      )
    end

    context 'when type public_event' do
      it 'has short display with all properties' do
        entity = create(:public_event_entity)
        expect(
          entity.short_display
        ).to eq(
          "<span>#{entity.label} (#{entity.properties[:date]}).</span>"
        )
      end

      it 'has short display with no date' do
        entity = create(:public_event_entity)
        entity.properties[:date] = nil
        expect(
          entity.short_display
        ).to eq(
          "<span>#{entity.label}.</span>"
        )
      end
    end
  end

  context 'when type publication' do
    it 'has short display with all properties' do
      entity = create(:publication_entity)
      expect(
        entity.short_display
      ).to eq(
        "<span>#{entity.properties[:author]}, #{entity.label}, #{entity.properties[:translator]} #{entity.properties[:publicationInformation]}</span>"
      )
    end

    it 'has short display with no translator' do
      entity = create(:publication_entity)
      entity.properties[:translator] = nil
      expect(
        entity.short_display
      ).to eq(
        "<span>#{entity.properties[:author]}, #{entity.label} #{entity.properties[:publicationInformation]}</span>"
      )
    end

    it 'has short display with only label' do
      entity = create(:publication_entity)
      entity.properties[:author] = nil
      entity.properties[:publicationInformation] = nil
      entity.properties[:translator] = nil
      expect(
        entity.short_display
      ).to eq(
        "<span>#{entity.label}.</span>"
      )
    end
  end

  context 'when type reading' do
    it 'has short display with all properties' do
      entity = create(:reading_entity)
      expect(
        entity.short_display
      ).to eq(
        "<span>#{entity.properties[:authors].join(', ')}, #{entity.label}, #{entity.properties[:publication]}.</span>"
      )
    end

    it 'has short display with multiple authors' do
      entity = create(:reading_entity)
      3.times { entity.properties[:authors].push(Faker::Movies::Lebowski.character) }
      expect(
        entity.short_display
      ).to eq(
        "<span>#{entity.properties[:authors].join(', ')}, #{entity.label}, #{entity.properties[:publication]}.</span>"
      )
    end

    it 'has short display with only label' do
      entity = create(:reading_entity)
      entity.properties[:authors] = []
      entity.properties[:publication] = nil
      expect(
        entity.short_display
      ).to eq(
        "<span>#{entity.label}.</span>"
      )
    end
  end

  context 'when type translating' do
    it 'has short display with all properties' do
      entity = create(:translating_entity)
      expect(
        entity.short_display
      ).to eq(
        "<span>#{entity.properties[:author]}, #{entity.label}, Translated into #{entity.properties[:translatedInto]} by #{entity.properties[:translator]}.</span>"
      )
    end

    it 'has short display with no translator' do
      entity = create(:translating_entity)
      entity.properties[:translator] = nil
      expect(
        entity.short_display
      ).to eq(
        "<span>#{entity.properties[:author]}, #{entity.label}, Translated into #{entity.properties[:translatedInto]}.</span>"
      )
    end

    it 'has short display with label only' do
      entity = create(:translating_entity)
      entity.properties[:translator] = nil
      entity.properties[:author] = nil
      entity.properties[:translatedInto] = nil
      expect(
        entity.short_display
      ).to eq(
        "<span>#{entity.label}.</span>"
      )
    end
  end

  context 'when type work_of_art' do
    it 'has short display with all properties' do
      entity = create(:work_of_art_entity)
      expect(
        entity.short_display
      ).to eq(
        "<span>#{entity.properties[:artist]}, #{entity.label}, #{entity.description}</span>"
      )
    end

    it 'has short display with label only' do
      entity = create(:work_of_art_entity)
      entity.properties[:artist] = nil
      entity.description = nil
      expect(
        entity.short_display
      ).to eq(
        "<span>#{entity.label}.</span>"
      )
    end
  end

  context 'when type writing' do
    it 'has short display with all properties' do
      entity = create(:writing_entity)
      expect(
        entity.short_display
      ).to eq(
        "<span>#{entity.label}.</span>"
      )
    end
  end
end

# rubocop:enable Layout/LineLength
