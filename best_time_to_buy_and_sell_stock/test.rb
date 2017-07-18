require_relative "main"
require "test/unit"

include Main

class MainTest < Test::Unit::TestCase
  def test_simple()
    assert_equal(0, max_profit([]))
    assert_equal(0, max_profit([1]))

    assert_equal(5, max_profit([7, 1, 5, 3, 6, 4]))
    assert_equal(2, max_profit([2,4,1]))
    assert_equal(0, max_profit([3,2,1]))
    assert_equal(1, max_profit([1,2]))
  end
end
