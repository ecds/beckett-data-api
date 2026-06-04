# frozen_string_literal: true

require 'rails_helper'

RSpec.describe Medium do
  it 'has file attached' do
    medium = build(:medium)
    medium.save
    expect(medium.image.attached?).to be(true)
    expect(medium.filename).to eq('beckett.png')
  end
end
