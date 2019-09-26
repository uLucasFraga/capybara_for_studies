# frozen_string_literal: true

require 'capybara'
require 'capybara/cucumber'
require 'selenium-webdriver'
require 'site_prism'
require 'rspec'
require 'dotenv'
require 'json'
require 'dotenv/load'
require 'pry'
require_relative 'helper.rb'
require_relative 'page_helper.rb'

World(Pages)
World(Helper)

BROWSER = ENV['BROWSER']
Capybara.default_max_wait_time = 10
capabilities = Selenium::WebDriver::Remote::Capabilities.new
capabilities['browserName'] = 'chrome'
capabilities['resolution'] = '1920,1080'
capabilities['version'] = '77'
capabilities['javascript_enabled'] = true
capabilities['takesScreenshot'] = true

Capybara.register_driver :selenium do |app|
  if BROWSER.eql?('chrome')
    chrome_option = ::Selenium::WebDriver::Chrome::Options.new(args:
      ['--disable-gpu', '--disable-infobars', '--window-size=1920,1080'])
    Capybara::Selenium::Driver.new(app, browser: :chrome, options: chrome_option)
  elsif BROWSER.eql?('firefox')
    firefox_option = ::Selenium::WebDriver::Firefox::Options.new(args:
      ['--disable-gpu', '--disable-infobars', '--window-size=1920,1080'])
    Capybara::Selenium::Driver.new(app, browser: :firefox, options: firefox_option)
  elsif BROWSER.eql?('chrome_headless')
    Capybara::Selenium::Driver.new(app,
                                   browser: :chrome,
                                   desired_capabilities: Selenium::WebDriver::Remote::Capabilities.chrome(
                                     'goog:chromeOptions': {
                                       'args': ['--headless', '--disable-gpu', '--window-size=1920,1080']
                                     }
                                   ))
  end
end
