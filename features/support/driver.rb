require 'capybara'
require 'capybara/cucumber'
require_relative '../../all'

class Rew
    attr_accessor :asd
    include Share
    Capybara.default_driver = :selenium
    Capybara.page.driver.browser.manage.window.maximize
    $asd = WebPage.new
    Capybara.current_session.driver
    Capybara.current_session
end