require 'rails_helper'

RSpec.describe Medium, type: :model do
  it 'has file attacthed' do
    medium = build(:medium)
    medium.save
    expect(medium.image.attached?).to be(true)
    expect(medium.image.url).to include('example.com')
    expect(medium.filename).to eq('beckett.png')
  end
end
