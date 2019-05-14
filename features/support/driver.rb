require 'capybara'
require 'capybara/cucumber'
require_relative '../../web_page/page'

#attr_accessor :browser

Capybara.default_driver = :selenium
@browser = WebPage.new
Capybara.current_session.driver
Capybara.current_session
