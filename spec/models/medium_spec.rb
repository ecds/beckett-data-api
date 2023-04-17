require 'rails_helper'

RSpec.describe Medium, type: :model do
  it 'has file attacthed' do
    medium = build(:medium)
    expect(medium.image.attached?).to be(true)
  end
end
