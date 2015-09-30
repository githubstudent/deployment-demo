require 'sinatra'
#If you change this statement, don't forget about tests.rb!
get '/' do
  @message = 'Hello, friends!'
  erb :index
end
