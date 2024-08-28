# frozen_string_literal: true

require 'rails_helper'

RSpec.describe Language do
  it 'has a label' do
    lang = create(:language)
    expect(lang.label).not_to be_nil
  end
end
