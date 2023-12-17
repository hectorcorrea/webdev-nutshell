require "sinatra"
require "./book_database.rb"

set :port, 3000
set :bind, '0.0.0.0','localhost'
disable :strict_paths

get("/") do
  @books = BookDatabase.all
  puts @books
  erb(:books_list)
end

get("/books/new") do
  id = params[:id]
  @book = {
    "title": "",
    "author": "",
    "year": 0
  }
  erb(:book_edit)
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
  id = params[:id].to_i
  title = params["title"]
  author = params["author"]
  year = params["year"].to_i
  BookDatabase.update(id, title, author, year)
  redirect "/books/#{id}"
end

post("/books/new") do
  # Get the book value passed on the HTML FORM
  title = params["title"]
  author = params["author"]
  year = params["year"].to_i
  # Save the book to our quasi-database
  id = BookDatabase.add(id, title, author, year)
  # Redirect the browser to the show page for our new book
  redirect "/books/#{id}"
end