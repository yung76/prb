
include Driver

Given /^browser to web site "([^"]*)"$/ do |url|
    Driver.browser.navigate.to url
end

