require 'rspec/expectations'
require 'capybara/cucumber'
require 'capybara-screenshot/cucumber'

Capybara.register_driver :chrome do |app|
  Capybara::Selenium::Driver.new(app, :browser => :chrome)
end

Capybara.javascript_driver = :chrome
