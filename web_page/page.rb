require 'capybara'
require 'capybara/dsl'

attr_accessor :browser

class WebPage
  include Capybara::DSL

  #

  def go_to(url)
    visit url
  end

  def find_and_element


    puts 'Looking for kind jobs'
    asd = find(:xpath, "//div[@class='Table-column Table-headline Table-middle is-wrapped is-firstMobile']//div[contains (.,'Aseguramiento de la calidad, localización y servicio al cliente')]")
    d = asd.text
    puts d
  end

end



