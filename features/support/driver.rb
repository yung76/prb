require 'selenium-webdriver'


module Driver
    
    def browser
        Selenium::WebDriver.for :firefox
    end

    def close_browser
        Selenium::WebDriver.quit
    end 

end