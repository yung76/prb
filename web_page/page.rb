require 'capybara'
require 'capybara/dsl'

#attr_accessor :browser
module Share
  class WebPage 
    include Capybara::DSL
    #

    def go_to(url)
      visit url
    end

    def find_an_element
      puts 'Looking for and element'
      #find(:xpath, "//a[contains(.,'Nuevas adquisiciones')]")
      asd = find(:xpath, "//div[contains(@class,'product-container')]//span[@class='new-label']")
      asd2 = asd.text
      
      puts asd
    end

    #method to mobile devices
    def find_element_on_cellphone
      puts 'Looking for and element and clicking '
      #find(:xpath, "//a[contains(.,'Nuevas adquisiciones')]")

      find(:xpath, "//android.widget.Button[contains(@text,'NO')]").click
      find(:xpath, "//android.widget.Button[contains(@text,'CANCELAR')]").click
      find(:xpath, "//android.widget.TextView[contains(@text,'LO ENTIENDO')]").click
      Capybara.current_session.driver.browser.find_element_by_image '992.png'
      print 'encontre algo'


      #asd.click
    end

  end
end