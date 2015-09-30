require 'sinatra'
#If you change this statement, don't forget about tests.rb!
get '/' do
  @message = 'Hello, Jim and Ray!'
  erb :index
end
