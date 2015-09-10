require 'sinatra'
#If you change this statement, don't forget about tests.rb!
get '/' do
  @welcome_message = 'Hello, @brntbeer!'
  erb :index
end
