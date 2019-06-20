require 'capybara'
require 'capybara/cucumber'
require 'appium_lib'
require 'appium_capybara/driver/appium/driver'
require 'appium_capybara/driver/appium/node'
require_relative '../../web_page/page'

class Rew
    attr_accessor :asd
    #include Share
    case ENV['KIND_DRIVER']
    when 'firefox'
      Capybara.default_driver = :selenium
      Capybara.page.driver.browser.manage.window.maximize
    when 'appium'
      url = ENV['APPIUM_URL'] || 'http://0.0.0.0:4723/wd/hub'
      desired_caps = {}

      desired_caps[:platformVersion] = ENV['PLATFORM_VERSION_DEVICE'] if ENV['PLATFORM_VERSION_DEVICE']

      Capybara.register_driver :appium do |app|
        appium_lib_options = {
            server_url: url
        }
        all_options        = {
            appium_lib: appium_lib_options,
            caps:       desired_caps
        }

        ::Appium::Capybara::Driver.new app, all_options

      end
    else
      puts 'Could you please specify a driver?'
    end

    #$asd = Share::WebPage.new
    Capybara.current_session.driver
    Capybara.current_session
end