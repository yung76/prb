Before do |scenario|
    puts  "Test started on #{Time.now.strftime '%F %T'}"
    puts scenario
end

After do |scenario|
    puts  "Test finish on #{Time.now.strftime '%F %T'}"
    puts  staturs_test = scenario.passed?
end