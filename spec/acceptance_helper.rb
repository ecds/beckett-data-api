# frozen_string_literal: true

require 'rails_helper'
require 'rspec_api_documentation/dsl'

RspecApiDocumentation.configure do |config|
  config.format = %i[html markdown]
  config.template_path = Rails.root.join('templates', 'rspec_api_documentation')
  config.keep_source_order = true
  config.docs_dir = Rails.public_path.join('docs')
  config.api_name = 'Beckett Data API Documentation'
end
