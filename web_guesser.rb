require 'sinatra'
require 'sinatra/reloader'

NUMBER = rand(99)



def message(guess)
  if guess == NUMBER
     message = "You win! The SECRET NUMBER is #{NUMBER}"
   elsif guess.between?((NUMBER - 5), NUMBER)
     message = "Too low!"
   elsif guess.between?(NUMBER, (NUMBER + 5))
     message = "Too high!"
   elsif guess < (NUMBER - 5)
     message = "Way too low!"
   else
     message = "Way too high!"
  end
end

get '/' do
  message = message(params["guess"].to_i)
  erb :index, :locals => {:number => NUMBER, :message => message}
end
