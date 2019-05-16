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

  end
end