require 'rack/test'
require 'minitest/autorun'
require './web'

class RedirectTest < MiniTest::Unit::TestCase
  include Rack::Test::Methods

  def app
    RedirectTo
  end

  def test_redirect
    get '/'
    assert_equal(302, last_response.status)
    assert_equal(ENV['REDIRECT_TO'],
                 last_response.headers['Location'])
  end

end
