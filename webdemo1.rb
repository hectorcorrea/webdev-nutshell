require "sinatra"

set :port, 3000
set :bind, '0.0.0.0','localhost'

get("/hello") do
  "<p><b>Hello!</b> - this text comes from our Sinatra app</p>"
end
