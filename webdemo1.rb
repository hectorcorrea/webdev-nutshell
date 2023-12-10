require "sinatra"

set :port, 3000

get("/hello") do
  "<p><b>Hello!</b> - this text comes from our Sinatra app</p>"
end
