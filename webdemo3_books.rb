require "sinatra"
require "./book_database.rb"

set :port, 3000
set :bind, '0.0.0.0','localhost'
disable :strict_paths

# Display the home page (a list of books)
get("/") do
  @books = BookDatabase.all
  erb(:books_list)
end

# Display information about a single book
get("/books/:id") do
  id = params[:id].to_i
  @book = BookDatabase.find(id)
  erb(:book_show)
end

# Display the edit form for a single book
get("/books/:id/edit") do
  id = params[:id].to_i
  @book = BookDatabase.find(id)
  erb(:book_edit)
end

# Save the information for a single book
post("/books/:id/save") do
  # Get the values submitted on the HTML FORM...
  id = params[:id].to_i
  title = params["title"]
  author = params["author"]
  year = params["year"].to_i
  # ...update the book in our database
  BookDatabase.update(id, title, author, year)
  # ...and send the user to the show page of the book updated
  redirect "/books/#{id}"
end

# Display the form to add a new book
get("/new-book") do
  id = params[:id]
  @book = BookDatabase.create_new
  erb(:book_new)
end

# Save the information of a new book
post("/new-book") do
  # Get the values submitted on the HTML FORM...
  title = params["title"]
  author = params["author"]
  year = params["year"].to_i
  # ...add the new the book to our database
  id = BookDatabase.add(id, title, author, year)
  # ...and send the user to the show page for our new book
  redirect "/books/#{id}"
end