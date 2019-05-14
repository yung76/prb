Given /^browser navigate to web site "([^"]*)"$/ do |url|
    #Capybara.app_host = url
    #visit url
  #asd = current_session.driver.manage.logs.get(:browser)
  #puts asd
  #Asd::WebPage.navigate_to url
    #@asd2 = WebPage.new
    #@asd2.navigate_to url
  @@browser.go_to url
end

Then /^looking for an element in page$/ do
  #@asd2.find_and_element
end

Then /^click in label quality assurance$/ do
    #@asd.click
    #puts 'Clicking in label'
    #sleep 10
end

Then /^looking for list details jobs$/ do
    #@s = find(:xpath, "//div[contains(@data-group,'quality')]//div[contains(@class,'Table-column Table-headline is-wrapped is-firstMobile')]").size
    #puts "I found  #{@s} jobs"
end
