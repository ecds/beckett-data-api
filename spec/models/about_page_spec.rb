# frozen_string_literal: true

require 'rails_helper'

RSpec.describe AboutPage do
  it 'has a title and body' do
    about = create(:about_page)
    expect(about.title).not_to be_nil
    expect(about.body).not_to be_nil
  end
end
