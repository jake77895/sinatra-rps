require "sinatra"
require "sinatra/reloader"

get("/") do
  "
  <h1>Welcome to your Sinatra App!</h1>
  <p>Define some routes in app.rb</p>
  "

  erb(:instructions, { :layout => :layout })
end

get("/rock") do

  erb(:rock, { :layout => :layout })

end

get("/paper") do

  erb(:paper, { :layout => :layout })

end

get("/scissors") do

  erb(:scissors, { :layout => :layout })

end
