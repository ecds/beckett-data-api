# frozen_string_literal: true

require 'rails_helper'
require 'rspec_api_documentation/dsl'

RspecApiDocumentation.configure do |config|
  config.format = %i[html markdown]
  config.template_path = Rails.root.join('templates/rspec_api_documentation')
end
