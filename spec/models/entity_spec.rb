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
end
