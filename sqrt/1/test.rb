require_relative "main"
require "test/unit"

include Main

class MainTest < Test::Unit::TestCase
  def test_simple()
    assert_equal(1, my_sqrt(1))
    assert_equal(1, my_sqrt(2))
    assert_equal(1, my_sqrt(3))
    assert_equal(2, my_sqrt(4))
    assert_equal(2, my_sqrt(6))
    assert_equal(3, my_sqrt(9))
  end
end
