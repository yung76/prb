favorite_foods = {
  'vegetable' => 'broccoli'
}
puts "Do you like coding in Ruby?"
answer = gets.chomp
case language
  when "JS"
    puts "Websites!"
  when "Python"
    puts "Science!"
  when "Ruby"
    puts "Web apps!"
  else
    puts "I don't know!"
end
---------------
movies = {
  'Thor' => 1
  }
puts "Choise a fuction"
choice = gets.chomp
case choice
  when "add"
  	title = gets.chomp
    if movies[title.to_sym].nil?
      puts "#{title} add a grade 1 - 4"
      rating = gets.chomp
      movies[title.to_sym] = rating.to_i
      puts "#{title} has been added with #{rating}"
      else
      	puts "The movie already exists!"
    end
  when "update"
    puts "Updated!"
  when "delete"
    puts "Deleted!"
  else
    puts "Error!"
end
