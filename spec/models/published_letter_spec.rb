# frozen_string_literal: true

require 'rails_helper'
require 'action_view'

RSpec.describe PublishedLetter, type: :model do
  it 'only returns published entities' do
    create_list(:published_letter, 5)
    create_list(:letter, 3, published: false)

    expect(described_class.all.map(&:published)).to all(be true)
    expect(described_class.count).to be < Letter.count
  end

  it 'updates index when letter is published' do
    letter = create(:unpublished_letter)
    expect(described_class.search('*', where: { label: letter.label })).to be_empty
    letter.repositories.first.update(published: true)
    letter.save!
    letter.reload
    expect(letter.published).to be true
    expect(described_class.search('*', where: { label: letter.label }).first.id).to eq(letter.id)
  end

  it 'updates index when letter is unpublished' do
    letter = create(:published_letter)
    expect(described_class.search('*', where: { label: letter.label }).first.id).to eq(letter.id)
    letter.repositories.first.update(published: false)
    letter.save!
    letter.reload
    expect(letter.published).to be false
    expect(described_class.search('*', where: { label: letter.label })).to be_empty
  end
end
