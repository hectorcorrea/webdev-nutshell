require "sinatra"

set :port, 3000
set :bind, '0.0.0.0','localhost'
disable :strict_paths

get("/") do
  # Render the HTML on ./views/welcome.erb
  erb(:welcome)
end
