puts "Hello world from a Ruby program"
puts "The time is #{Time.now}"
puts ""

book1 = {title: "The Art of Logic", author: "Cheng, Eugenia"}
book2 = {title: "Escape from Model Land", author: "Thompson, Erica"}
books = [book1, book2]

puts "Here is a list of #{books.count} books: "
books.each do |book|
    puts "  #{book[:title]} by #{book[:author]}"
end
puts "=="
