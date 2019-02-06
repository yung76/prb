

Given /^browser to web site "([^"]*)"$/ do |url|
    #browser
    Capybara.app_host = url
    visit ('/')
end

