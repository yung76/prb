require 'capybara'
require 'capybara/cucumber'
require 'appium_lib'
require 'appium_capybara/driver/appium/driver'
require 'appium_capybara/driver/appium/node'
require_relative '../../web_page/page'

    #attr_accessor :asd
    #include Share
    case ENV['KIND_DRIVER']
    when 'firefox'
      Capybara.default_driver = :selenium
      Capybara.page.driver.browser.manage.window.maximize
    when 'appium'
      url = ENV['APPIUM_URL'] || 'http://0.0.0.0:4723/wd/hub'
      puts "coneecting to #{url}"
      desired_caps = {}

      desired_caps[:platformVersion] = ENV['PLATFORM_VERSION_DEVICE'] if ENV['PLATFORM_VERSION_DEVICE']
      desired_caps[:platformName] = ENV['PLATFORM_NAME'] || "Android"
      desired_caps[:deviceName] = ENV['DEVICE_NAME'] || "phone"
      desired_caps[:udid] = ENV['DEVICE_ID'] if ENV['DEVICE_ID']
      desired_caps[:automationName] = ENV['AUTOMATION_NAME'] || "Uiautomator2"
      desired_caps[:appPackage] = ENV['APP_PACKAGE'] if ENV['APP_PACKAGE']
      desired_caps[:appActivity] = ENV['APP_ACTIVITY'] if ENV['APP_ACTIVITY']
      desired_caps[:autoGrantPermissions] = true
      #used the below line to test web browser smartphone
      desired_caps[:browserName] = ENV['BROWSER_NAME_MOBILE'] if ENV['BROWSER_NAME_MOBILE']

      #puts "I'm using those capabilities #{desired_caps}"
      print desired_caps
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
      Capybara.default_driver    = ENV['KIND_DRIVER'].to_sym

    else
      puts 'Could you please specify a driver?'
    end

    #$asd = Share::WebPage.new
    #Capybara.current_session.driver
    #Capybara.current_session
