# frozen_string_literal: true

require 'rails_helper'

RSpec.describe Medium do
  it 'has file attacthed' do
    ActiveStorage::Current.url_options = { host: ENV.fetch('RAILS_HOST', 'localhost:3000') }
    medium = build(:medium)
    medium.save
    expect(medium.image.attached?).to be(true)
    expect(medium.image.url).to include('example.com')
    expect(medium.filename).to eq('beckett.png')
  end
end
