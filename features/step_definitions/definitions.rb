Given /^browser navigate to web site "([^"]*)"$/ do |url|
  @browser.go_to url
end

Then /^go to section videogames$/ do
  @browser.go_to_section
end

Then /^apply filter by brand$/ do
  @browser.add_filter
end

Then /^increase quantity by three$/ do
  @browser.increase_quantity
end
