# frozen_string_literal: true

require 'rails_helper'
require 'action_view'

RSpec.describe PublishedEntity, type: :model do
  it 'only returns published entities' do
    create_list(:entity, 5, :published)
    create_list(:entity, 3, :unpublished)

    expect(described_class.all.map(&:published)).to all(be true)
    expect(described_class.count).to be < Entity.count
  end
end
