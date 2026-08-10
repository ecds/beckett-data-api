# frozen_string_literal: true

require 'rails_helper'

RSpec.describe LetterOwnerDashboard do
  it_behaves_like 'a dashboard with display_resource',
                  factory: :letter_owner,
                  expected: ->(letter_owner) { letter_owner.label }
end
