require 'capybara/cucumber'
require 'pry'

Capybara.configure do |config|
  config.run_server = false
  config.app_host   = 'http://www.facebook.com'
  config.default_driver = :selenium
end

Capybara.default_wait_time = 30
