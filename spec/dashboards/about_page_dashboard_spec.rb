# frozen_string_literal: true

require 'rails_helper'

RSpec.describe AboutPageDashboard do
  it_behaves_like 'a dashboard with display_resource',
                  factory: :about_page,
                  expected: ->(about_page) { "AboutPage ##{about_page.title}" }
end
