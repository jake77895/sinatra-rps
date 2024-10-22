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

  comp_move_num = rand(1..3)
  comp_move = ""
  outcome = ""

  if(comp_move_num == 1)
    @comp_move = "rock"
    @outcome = "We tie!"
  elsif(comp_move_num == 2)
    @comp_move = "paper"
    @outcome = "We lost!"
  else
    @comp_move = "scissors"
    @outcome = "We won!"
  end



  erb(:rock, { :layout => :layout })

end

get("/paper") do

  erb(:paper, { :layout => :layout })

end

get("/scissors") do


  erb(:scissors, { :layout => :layout })

end
