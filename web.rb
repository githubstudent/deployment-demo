require 'sinatra'
#If you change this statement, don't forget about tests.rb!
get '/' do
  @body = 'Hello, COE'
  erb :index
end
