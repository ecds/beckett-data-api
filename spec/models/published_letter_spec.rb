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
end
