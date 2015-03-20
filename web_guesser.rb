require 'sinatra'
require 'sinatra/reloader'

number = rand(99)

get '/' do
  "The secret number is #{number}".upcase
end
