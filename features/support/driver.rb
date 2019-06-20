require 'capybara'
require 'capybara/cucumber'
require_relative '../../web_page/page'

class Rew
    attr_accessor :asd
    #include Share
    Capybara.default_driver = :selenium
    Capybara.page.driver.browser.manage.window.maximize
    #$asd = Share::WebPage.new
    Capybara.current_session.driver
    Capybara.current_session
end