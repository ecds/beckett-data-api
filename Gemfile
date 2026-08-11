# frozen_string_literal: true

source 'https://rubygems.org'
git_source(:github) {|_repo| "https://github.com/#{repo}.git" }

ruby '3.4.10'

# Bundle edge Rails instead: gem 'rails', github: 'rails/rails', branch: 'main'
gem 'rails', '~> 8.1.3'

# csv stopped being a Ruby default gem in 3.4+; httparty requires it internally
# without declaring it as a dependency, so it must be explicit here.
gem 'csv'

# benchmark won't be a default gem starting in Ruby 4.0; mini_magick requires it
# internally without declaring it as a dependency.
gem 'benchmark'

# Use postgresql as the database for Active Record
gem 'pg', '~> 1.1'

# Elasticseach for search
gem 'elasticsearch', '~> 8'
gem 'searchkick'

# Use the Puma web server [https://github.com/puma/puma]
gem 'puma', '~> 5.0'

# Windows does not include zoneinfo files, so bundle the tzinfo-data gem
gem 'tzinfo-data', platforms: %i[mingw mswin x64_mingw jruby]

# Reduces boot times through caching; required in config/boot.rb
gem 'bootsnap', require: false

# Use Active Storage variants [https://guides.rubyonrails.org/active_storage_overview.html#transforming-images]
gem 'image_processing', '~> 1.2'

# Use Rack CORS for handling Cross-Origin Resource Sharing (CORS), making cross-origin AJAX possible
gem 'rack-cors'

gem 'administrate'
gem 'administrate-field-jsonb'
gem 'trix-rails', require: 'trix'

# administrate < 1.0 pulled these in transitively via sassc-rails; administrate 1.0
# bundles its own assets and dropped that dependency, but the app's own asset
# pipeline (app/assets/config/manifest.js) still relies on Sprockets/Sass directly.
gem 'sassc-rails'
gem 'sprockets-rails'

group :development, :test do
  # See https://guides.rubyonrails.org/debugging_rails_applications.html#debugging-with-the-debug-gem
  gem 'debug', platforms: %i[mri mingw x64_mingw]
  gem 'factory_bot_rails'
  gem 'faker'
  gem 'rspec-rails'
  gem 'rubocop'
  gem 'rubocop-factory_bot', require: false
  gem 'rubocop-rails', require: false
  gem 'rubocop-rspec', require: false
  gem 'rubocop-rspec_rails', require: false
  gem 'shoulda-matchers'
end

group :test do
  # For system specs (spec/system). selenium-webdriver >= 4.6 manages the
  # chromedriver binary itself (Selenium Manager) - no separate webdriver gem needed.
  gem 'capybara'
  gem 'selenium-webdriver'
  # CDP support, needed for Selenium's driver.register(username:, password:) - used to
  # authenticate admin system specs without embedding credentials in the visited URL.
  gem 'selenium-devtools'
end

gem 'kaminari', '~> 1.2'

gem 'jbuilder', '~> 2.11'

# 11.0.0 hard-pins activerecord < 8.0, which makes it impossible to install
# alongside Rails 8 at all - not a discretionary bump, a forced one. 12->13 has
# no breaking changes to the tag_list/for_context API ActsAsTaggableField uses
# (see CHANGELOG.md), only dropped-Ruby-version and added-Rails-version support.
gem 'acts-as-taggable-on', '~> 13.0'

gem 'administrate-field-list', '~> 0.0.6'

gem 'httparty', '~> 0.20.0'

gem 'roo', '~> 2.9'

gem 'namae', '~> 1.1'

gem 'administrate-field-active_storage', '~> 0.4.1'

gem 'active_record_doctor', '~> 1.10'

gem 'sidekiq', '>=7.2.2', '<8'

gem 'addressable', '~> 2.9'

gem 'importmap-rails', '~> 2.0'

gem 'sidekiq-cron', '~>2.4.0'

# SES delivery for ActionMailer, authenticating via the instance/task IAM role
gem 'aws-sdk-rails', '~> 5.0'
gem 'aws-sdk-ses', '~> 1.0'
