Before do |scenario|
    @brow = $asd
    puts  "Test #{ scenario.name } started on #{Time.now.strftime '%F %T'} "

end

After do |scenario|
    puts  "Test finish on #{Time.now.strftime '%F %T'}"
    puts  staturs_test = scenario.passed?
end
