# frozen_string_literal: true

require 'selenium/webdriver'

# Mirrors Administrate's own spec/support/webdrivers.rb (thoughtbot/administrate) -
# selenium-webdriver >= 4.6 manages the chromedriver binary itself, no separate
# webdriver-manager gem needed.
Capybara.register_driver :headless_chrome do |app|
  options = Selenium::WebDriver::Chrome::Options.new
  options.add_argument('--headless=new')
  options.add_argument('--window-size=1680,1050')
  options.add_argument('--disable-gpu')
  options.add_argument('--disable-dev-shm-usage')

  Capybara::Selenium::Driver.new(app, browser: :chrome, options:)
end

Capybara.javascript_driver = :headless_chrome

RSpec.configure do |config|
  config.before(:each, type: :system) do
    driven_by :rack_test
  end

  config.before(:each, :js, type: :system) do
    driven_by Capybara.javascript_driver
  end
end
