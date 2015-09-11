require 'sinatra'
#If you change this statement, don't forget about tests.rb!
get '/' do
  @body = 'Hello, GE EMEA and APAC!'
  erb :index
end
