# frozen_string_literal: true

source 'https://rubygems.org'
git_source(:github) {|_repo| "https://github.com/#{repo}.git" }

ruby '3.1.2'

# Bundle edge Rails instead: gem 'rails', github: 'rails/rails', branch: 'main'
gem 'rails', '~> 7.0.2', '>= 7.0.2.3'

# Use postgresql as the database for Active Record
gem 'pg', '~> 1.1'

# Elasticseach for search
gem 'elasticsearch', '~> 7.17.1'
gem 'searchkick'

# Use the Puma web server [https://github.com/puma/puma]
gem 'puma', '~> 5.0'

# Build JSON APIs with ease [https://github.com/rails/jbuilder]
# gem 'jbuilder'

# Use Redis adapter to run Action Cable in production
# gem 'redis', '~> 4.0'

# Use Kredis to get higher-level data types in Redis [https://github.com/rails/kredis]
# gem 'kredis'

# Use Active Model has_secure_password [https://guides.rubyonrails.org/active_model_basics.html#securepassword]
# gem 'bcrypt', '~> 3.1.7'

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

group :development, :test do
  # See https://guides.rubyonrails.org/debugging_rails_applications.html#debugging-with-the-debug-gem
  gem 'coveralls_reborn', '~> 0.24.0', require: false
  gem 'debug', platforms: %i[mri mingw x64_mingw]
  gem 'factory_bot_rails'
  gem 'faker'
  gem 'rspec-rails'
  gem 'rubocop'
  gem 'rubocop-rails', require: false
  gem 'rubocop-rspec', require: false
  gem 'shoulda-matchers'
  gem 'simplecov', require: false
  gem 'simplecov-lcov', require: false
end

group :development do
  gem 'capistrano', '~> 3.10', require: false
  gem 'capistrano-passenger', '~> 0.2.1', require: false
  gem 'capistrano-rails', '~> 1.6', require: false
  gem 'capistrano-rbenv', '~> 2.2', require: false
end

gem 'pundit', '~> 2.2'

gem 'kaminari', '~> 1.2'

gem 'jbuilder', '~> 2.11'

gem 'rspec_api_documentation', '~> 6.1'

gem 'acts-as-taggable-on', '~> 9.0'

gem 'administrate-field-acts_as_taggable', '~> 0.0.4'

gem 'administrate-field-list', '~> 0.0.6'

gem 'httparty', '~> 0.20.0'

gem 'google-api-client'

gem 'roo', '~> 2.9'

gem 'namae', '~> 1.1'

gem 'administrate-field-active_storage', '~> 0.4.1'

gem 'capistrano-bundler', '~> 2.1'

gem 'active_record_doctor', '~> 1.10'

gem 'sidekiq', '~> 6.5'
