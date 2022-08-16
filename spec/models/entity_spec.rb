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

  # context 'when lable contains em tag' do
  # end

  context 'when all valid' do
    # short descriptions
    it 'has short display' do
      described_class.e_types.each_key do |type|
        create("#{type}_entity".to_sym)
        expect(described_class.public_send(type).first.short_display).not_to be_nil
      end
    end

    # long descriptions
    it 'has full display' do
      described_class.e_types.each_key do |type|
        create("#{type}_entity".to_sym)
        expect(described_class.public_send(type).first.full_display).not_to be_nil
      end
    end
  end
end

# rubocop:enable Layout/LineLength
