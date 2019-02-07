Given /^browser to web site "([^"]*)"$/ do |url|
    Capybara.app_host = url
    visit ('/')
end

Then /^search a jobs$/ do 
    puts 'Looking for kind jobs'
    find(:xpath, "//div[@class='Table-column Table-headline Table-middle is-wrapped is-firstMobile']//div[contains (.,'Aseguramiento de la calidad, localización y servicio al cliente')]").click
    sleep 5
end 
