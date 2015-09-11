ENV['RACK_ENV'] = 'test'

require_relative 'web'
require 'test/unit'
require 'rack/test'

class IndexTemplateTest < Test::Unit::TestCase
  include Rack::Test::Methods

  def app
    Sinatra::Application
  end

  def test_it_has_welcome_message
    get '/'
    assert last_response.ok?
    assert last_response.body.include?('Hello, GE EMEA and APAC!')
  end
end
