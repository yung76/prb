Given /^browser to web site "([^"]*)"$/ do |url|
    Capybara.app_host = url
    visit ('/')
end

Then /^search a kind jobs$/ do 
    puts 'Looking for kind jobs'
    @asd = find(:xpath, "//div[@class='Table-column Table-headline Table-middle is-wrapped is-firstMobile']//div[contains (.,'Aseguramiento de la calidad, localización y servicio al cliente')]")
    d = @asd.text
    puts d
end 

Then /^click in label quality assurance$/ do
    @asd.click
    puts 'Clicking in label'
    sleep 10
end

Then /^looking for list details jobs$/ do
    #@s = find(:xpath, "//div[contains(@data-group,'quality')]//div[contains(@class,'Table-column Table-headline is-wrapped is-firstMobile')]").size
    #puts "I found  #{@s} jobs"

    
    
end