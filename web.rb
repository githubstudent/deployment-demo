require 'sinatra'
#If you change this statement, don't forget about tests.rb!
get '/' do
  @body = 'Hello Danish'
  erb :index
end
