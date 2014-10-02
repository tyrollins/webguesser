require 'sinatra'
require 'sinatra/reloader'

number = rand(100)
get '/' do
  "Secret Numer - #{number}"
end
