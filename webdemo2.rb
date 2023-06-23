require "sinatra"

# Allow /catalog and /catalog/ to resolve to the same thing
disable :strict_paths

# A fancier way to render a page: we load the HTML from a separate file,
# in this case the file is at ./views/hello_fancy.erb
get("/hello") do
  erb(:hello_page)
end

# Notice that we can execute Ruby code here and also on the view
# located at ./views/catalog_list.erb
get("/catalog") do
  book1 = {id: "123", title: "Decolonizing design"}
  book2 = {id: "456", title: "Thinking in Systems"}
  @books = [book1, book2]
  erb(:catalog_page)
end
