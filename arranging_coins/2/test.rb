require_relative "main"
require "test/unit"

include Main

class MainTest < Test::Unit::TestCase
  def test_simple()
    assert_equal(1, arrange_coins(1))
    assert_equal(2, arrange_coins(5))
    assert_equal(3, arrange_coins(8))
    assert_equal(4, arrange_coins(10))
    assert_equal(60070, arrange_coins(1804289383))
  end
end
