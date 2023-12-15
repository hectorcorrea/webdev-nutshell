require "sinatra"

set :port, 3000
set :bind, '0.0.0.0','localhost'
disable :strict_paths

get("/") do
  # Render a hard-coded HTML string
  html = "<h1>Welcome to your first web app</h1>"
  html += "<p>You are on your way to beat Google :)</p>"
  html += "<p>and it even has a link to our <a href=/fancy>fancy</a> page"
  return html
end

get("/fancy") do
  # Render the HTML found on ./views/fancy.erb
  erb(:fancy)
end
