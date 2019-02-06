

Before do |scenario|

end

After do |scenario|
    puts  "Test finish on #{Time.now.strftime '%F %T'}"
    puts  staturs_test = scenario.passed?
    #browser.quit
end