require "sinatra"

set :port, 3000
set :bind, '0.0.0.0','localhost'
disable :strict_paths

get("/books") do
  # Render the HTML on ./views/books.erb
  erb(:books)
end

get("/") do
  # Render the HTML on ./views/welcome.erb
  erb(:welcome)
end
