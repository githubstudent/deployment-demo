ENV['RACK_ENV'] = 'test'

require_relative 'web'
require 'test/unit'
require 'rack/test'

class IndexFileTest < Test::Unit::TestCase
  include Rack::Test::Methods

  def app
    Sinatra::Application
  end

  def test_welcome_message_exists_and_is_accurate
    get '/'
    assert last_response.ok?
    assert last_response.body.include?('Hello, friends!')
  end
end
