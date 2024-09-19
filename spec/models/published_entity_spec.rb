# frozen_string_literal: true

require 'rails_helper'
require 'action_view'

RSpec.describe PublishedEntity do
  it 'only returns published entities' do
    create_list(:entity, 5, :published)
    create_list(:entity, 3, :unpublished)

    expect(described_class.all.map(&:published)).to all(be true)
    expect(described_class.count).to be < Entity.count
  end

  it 'updates index when entity is published' do
    entity = create(:entity, :unpublished)
    expect(described_class.search('*', where: { label: entity.label })).to be_empty
    entity.letters.first.repositories.first.update(published: true)
    entity.letters.first.save
    entity.save!
    entity.reload
    expect(entity.published).to be true
    expect(described_class.search('*', where: { label: entity.label }).first.id).to eq(entity.id)
  end

  it 'updates index when entity is unpublished' do
    entity = create(:entity, :published)
    entity.save!
    expect(described_class.search('*', where: { label: entity.label }).first.id).to eq(entity.id)
    entity.letters.first.repositories.first.update(published: false)
    entity.letters.first.save
    entity.save!
    entity.reload
    expect(entity.published).to be false
    expect(described_class.search('*', where: { label: entity.label })).to be_empty
  end
end
