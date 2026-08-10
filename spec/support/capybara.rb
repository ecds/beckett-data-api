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

    # Admin::ApplicationController gates every admin route behind HTTP Basic Auth, and
    # this app has no session-based login to drive instead. Visiting with credentials
    # embedded in the URL (http://user:pass@host/path) used to work, but Administrate
    # 1.0 bundles Turbo, which calls history.replaceState on every page load - Chrome
    # rejects replaceState targets that carry userinfo, and since Administrate's JS is
    # one bundled IIFE, that uncaught exception aborts everything after it, including
    # selectize's own setup. Real admin users never hit this (their location.href never
    # carries credentials - Chrome only uses them for the auth handshake). Registering
    # credentials via CDP instead keeps the visited URL clean and sidesteps it entirely.
    Capybara.current_session.driver.browser.register(username: 'test', password: 'test')
  end
end
