# frozen_string_literal: true

require 'rails_helper'

RSpec.describe LetterDashboard do
  it_behaves_like 'a dashboard with display_resource',
                  factory: :letter,
                  expected: ->(letter) { "Letter ##{letter.legacy_pk}" }

  describe '#permitted_attributes' do
    it 'adds start_date on top of the default FORM_ATTRIBUTES-derived list' do
      # FORM_ATTRIBUTES is %i[entities content] - `entities` (a has-many field)
      # permits as {entity_ids: []}, `content` permits as itself, and this override
      # adds start_date and content again (already present via FORM_ATTRIBUTES, so
      # a harmless duplicate rather than a second distinct attribute).
      expect(described_class.new.permitted_attributes).to eq(
        [{ entity_ids: [] }, :content, :start_date, :content]
      )
    end
  end
end
