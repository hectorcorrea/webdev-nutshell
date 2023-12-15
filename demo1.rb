book1 = {title: "abc", author: "xyz"}
book2 = {title: "aaaa", author: "xxxx"}
books = [book1, book2]

puts "#{books.count} books: "
books.each do |book|
    puts book[:title]
end
