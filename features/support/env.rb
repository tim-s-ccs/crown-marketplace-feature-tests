# frozen_string_literal: true

require 'cucumber/rspec/doubles'
require 'capybara'
require 'capybara/cucumber'
require 'capybara/rspec'
require 'selenium-webdriver'
require 'site_prism'
require 'axe-capybara'
require 'axe-cucumber-steps'
require 'byebug'
require 'active_support/all'

# Allows us to use site prism in our tests
require_relative '../support/pages'

World(Pages)

# Set the time zone
Time.zone = 'London'

# We can set the config from the environments.<ENV>.yml file
test_env = ENV.fetch('TEST_ENV', 'local')

config_filename = "config/environment.#{test_env}.yml"

raise Errno::ENOENT(config_filename) unless File.file?(config_filename)

config = YAML.load_file('config/environment.shared.yml')[test_env].merge(YAML.load_file("config/environment.#{test_env}.yml"))

ENV['BUYER_EMAIL']    ||= config['users']['buyer']['email']
ENV['BUYER_PASSWORD'] ||= config['users']['buyer']['password']
ENV['ADMIN_EMAIL']    ||= config['users']['admin']['email']
ENV['ADMIN_PASSWORD'] ||= config['users']['admin']['password']

# Set the Capybara config
Capybara.app_host = config['host']

Capybara.register_driver :selenium do |app|
  options = Selenium::WebDriver::Firefox::Options.new

  options.add_argument('-headless') if ENV.fetch('HEADLESS', 'true') == 'true'

  options.add_preference('browser.download.folderList', 2)
  options.add_preference('browser.download.dir', DownloadHelpers::PATH.to_s)

  Capybara::Selenium::Driver.new(app, browser: :firefox, options: options)
end

Capybara.default_driver = :selenium

Capybara.ignore_hidden_elements = false
