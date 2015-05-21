ENV['RACK_ENV'] = 'test'

require_relative 'web'
require 'test/unit'
require 'rack/test'

class HelloWorldTest < Test::Unit::TestCase
  include Rack::Test::Methods

  def app
    Sinatra::Application
  end

  def test_it_says_hello_world
    get '/'
    assert last_response.ok?
    assert last_response.body.include?('Hello, Amex')
  end
end
