# frozen_string_literal: true

require 'rails_helper'

RSpec.describe Repository do
  it 'updates entity and letter published status' do
    repo = create(:repository, published: false)
    create_list(:letter, 3, repositories: [repo])
    expect(repo.letters.count).to eq(3)
    expect(repo.letters.map(&:published)).to all(be false)
    repo.letters.each do |letter|
      expect(letter.all_entities.map(&:published)).to all(be false)
    end

    repo.update(published: true)
    repo.save

    expect(repo.letters.map(&:published)).to all(be true)
    repo.letters.each do |letter|
      expect(letter.all_entities.map(&:published)).to all(be true)
    end
  end
end
