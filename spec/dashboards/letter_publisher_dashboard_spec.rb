# frozen_string_literal: true

require 'rails_helper'

RSpec.describe LetterPublisherDashboard do
  it_behaves_like 'a dashboard with display_resource',
                  factory: :letter_publisher,
                  expected: ->(letter_publisher) { letter_publisher.label }
end
