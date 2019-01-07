require 'capybara/cucumber'
require 'capybara-screenshot/cucumber'
require 'capybara/rspec'
require 'selenium-webdriver'
require 'json'
require 'base64'
#require "chromedriver/helper"
require 'webdrivers'
require 'rspec'
# Selenium::WebDriver::Chrome.driver_path
# Selenium::WebDriver::Chrome.driver_path='C:\Ruby24-x64\bin\chromedriver.exe'
Capybara.app_host = "http://www.inbox.lv"
Capybara.save_path = 'report/'
Capybara::Screenshot.autosave_on_failure = false
Capybara::Screenshot.prune_strategy = :keep_last_run

# ========================= ENVIRONMENT SETUP ========================#
Capybara.register_driver :selenium do |app|
    Capybara::Selenium::Driver.new(app, browser: :chrome)
end
Capybara.default_driver = :selenium

# ========================= SCENARIO TEARDOWN ========================#

Before do |scenario|
    @pages = Pages.new
    # @tests = Tests.new( @pages)
  
end