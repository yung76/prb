require 'capybara'
require 'capybara/dsl'
require 'capybara/cucumber'

#attr_accessor :browser
class WebPage
  include Capybara::DSL
  #
  def initialize
    Capybara.default_driver = :selenium
    Capybara.page.driver.browser.manage.window.maximize
    puts 'initialize browser'
  end

  def go_to(url)
    visit url
  end

  def go_to_section
    puts 'Looking for menu button'
    #find(:xpath, "//a[contains(.,'Nuevas adquisiciones')]")
    find(:xpath, "//div[@id='hamburgerMenu']/div[1]").click
    puts 'I found it button menu'
    find(:xpath, "//li[@id='item-3']").click
    puts "i found it 'Catagoria tecnologia'"
    find(:xpath, "//a[.='Videojuegos']/../../..//a[.='Consolas']").click
    puts "i found it 'videojuegos'"
  end

  def add_filter
    find(:xpath,"//button[@id='testId-Dropdown-desktop-button']/../..").click
    puts "i found it 'filtro'"
    find(:xpath,"//button[@id='testId-Dropdown-Marca']").click
    puts "i found it 'marca'"
    find(:xpath,"//div[@id='testId-searchResults-products']/div[1]//button").click
    puts "i found it 'ver producto'"

  end

  def increase_quantity
    2.times do
      find(:xpath,"//div[contains(@class,'quantity')]//button[2]").click
    end
  end

end
