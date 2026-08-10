# frozen_string_literal: true

require 'rails_helper'

RSpec.describe RepositoryDashboard do
  it_behaves_like 'a dashboard with display_resource',
                  factory: :repository,
                  expected: ->(repository) { "Repository #{repository.label}" }
end
