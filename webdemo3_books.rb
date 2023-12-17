require "sinatra"
require "./book_database.rb"

set :port, 3000
set :bind, '0.0.0.0','localhost'
disable :strict_paths

get("/") do
  @books = BookDatabase.all
  erb(:books_list)
end

get("/books/new") do
  id = params[:id]
  @book = BookDatabase.create_new
  erb(:book_new)
end

get("/books/:id/edit") do
  id = params[:id].to_i
  @book = BookDatabase.find(id)
  erb(:book_edit)
end

get("/books/:id") do
  id = params[:id].to_i
  @book = BookDatabase.find(id)
  erb(:book_show)
end

post("/books/:id/save") do
  # Get the values submitted on the HTML FORM...
  id = params[:id].to_i
  title = params["title"]
  author = params["author"]
  year = params["year"].to_i
  # ...update the book in our database
  BookDatabase.update(id, title, author, year)
  # ...and send the user to the show page for our new book
  redirect "/books/#{id}"
end

post("/books/new") do
  # Get the values submitted on the HTML FORM...
  title = params["title"]
  author = params["author"]
  year = params["year"].to_i
  # ...add the new the book to our database
  id = BookDatabase.add(id, title, author, year)
  # ...and send the user to the show page for our new book
  redirect "/books/#{id}"
end