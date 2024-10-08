# frozen_string_literal: true

require 'rails_helper'

RSpec.describe Letter do
  it 'scopes publicly avaliable letters' do
    create_list(
      :letter,
      4,
      date: Faker::Date.between(from: '1900-1-1', to: '1930-1-1'),
      repositories: create_list(:repository, 1, published: true)
    )

    create_list(
      :letter,
      6,
      date: Faker::Date.between(from: '1957-1-1', to: '1965-12-31'),
      repositories: create_list(:repository, 1, published: true)
    )

    create_list(
      :letter,
      2,
      date: Faker::Date.between(from: '1957-1-1', to: '1965-12-31'),
      repositories: create_list(:repository, 1, published: false)
    )

    create_list(
      :letter,
      3,
      date: Faker::Date.between(from: '1966-1-1', to: '2000-12-31'),
      repositories: create_list(:repository, 1, published: false)
    )

    expect(described_class.count).to eq(15)
    expect(described_class.published.count).to eq(10)
  end

  it 'has distinct mentions' do
    letter = create(:letter)
    entity = create(:work_of_art_entity)
    2.times { letter.entities << entity }
    expect(letter.entities.count).to eq(letter.entities.uniq.count)
  end

  it 'has distinct recipients' do
    letter = create(:letter)
    entity = create(:person_entity)
    letter.update(recipients: [])
    4.times { letter.recipients << entity }
    expect(letter.recipients.count).to eq(1)
  end

  it 'has distinct senders' do
    letter = create(:letter)
    entity = create(:person_entity)
    letter.update(senders: [])
    4.times { letter.senders << entity }
    expect(letter.senders.count).to eq(1)
  end

  it 'has distinct destinations' do
    letter = create(:letter)
    entity = create(:place_entity)
    letter.update(destinations: [])
    2.times { letter.destinations << entity }
    expect(letter.destinations.count).to eq(1)
  end

  it 'has distinct origins' do
    letter = create(:letter)
    entity = create(:place_entity)
    letter.update(origins: [])
    6.times { letter.origins << entity }
    expect(letter.origins.count).to eq(1)
  end

  it 'deletes mentions but not entity' do
    letter = create(:letter, entities: create_list(:reading_entity, 4))
    expect(Entity.reading.count).to be >= 4
    expect(letter.entities.count).to be >= 4
    expect(letter.mentions.count).to be >= 4
    expect {
      letter.destroy
    }.not_to change(Entity, :count)
    expect(Mention.where(letter:)).to be_empty
  end

  it 'deletes senders but not entity' do
    letter = create(:letter, senders: create_list(:person_entity, 2))
    expect(Entity.person.count).to be >= 2
    expect(LetterSender.count).to eq(2)
    expect(letter.senders.count).to eq(2)
    expect(letter.letter_senders.count).to eq(2)
    expect {
      letter.destroy
    }.not_to change(Entity, :count)
    expect(LetterSender.where(letter:)).to be_empty
  end

  it 'deletes recipients but not entity' do
    letter = create(:letter, recipients: create_list(:person_entity, 3))
    expect(Entity.person.count).to be >= 3
    expect(LetterRecipient.count).to eq(3)
    expect(letter.recipients.count).to eq(3)
    expect(letter.letter_recipients.count).to eq(3)
    expect {
      letter.destroy
    }.not_to change(Entity, :count)
    expect(LetterRecipient.where(letter:)).to be_empty
  end

  it 'deletes destinations but not entity' do
    letter = create(:letter, destinations: create_list(:place_entity, 2))
    expect(Entity.place.count).to be >= 2
    expect(LetterDestination.count).to eq(2)
    expect(letter.destinations.count).to eq(2)
    expect(letter.letter_destinations.count).to eq(2)
    expect {
      letter.destroy
    }.not_to change(Entity, :count)
    expect(LetterDestination.where(letter:)).to be_empty
  end

  it 'deletes origins but not entity' do
    letter = create(:letter, origins: create_list(:place_entity, 3))
    expect(Entity.place.count).to be >= 3
    expect(LetterOrigin.count).to eq(3)
    expect(letter.origins.count).to eq(3)
    expect(letter.letter_origins.count).to eq(3)
    expect {
      letter.destroy
    }.not_to change(Entity, :count)
    expect(LetterOrigin.where(letter:)).to be_empty
  end

  it 'deletes letter_repository but not repository' do
    letter = create(:letter, repositories: create_list(:repository, 2))
    expect(Repository.count).to eq(2)
    expect(LetterRepository.count).to eq(2)
    expect(letter.repositories.count).to eq(2)
    expect(letter.letter_repositories.count).to eq(2)
    letter.destroy
    expect(Repository.count).to eq(2)
    expect(LetterRepository.count).to eq(0)
  end
end
