require 'selenium-webdriver'
require 'capybara'
require 'capybara/cucumber'
require 'rspec'

Capybara.configure do |c|
    c.default_driver = :selenium_chrome
end

Capybara.default_max_wait_time = 5