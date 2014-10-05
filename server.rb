require 'sinatra'
require 'sinatra/reloader'

number = rand(100)

def check_guess(guess, number)
  if number > guess
    'Too high!'
  elsif number < guess
    'Too low!'
  else
    "Got it!"
  end
end

get '/' do
  guess = params['guess'].to_i
  message = check_guess(guess, number)
  erb :index, :locals => {:number => number, :message => message}
end
