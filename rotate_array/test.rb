require_relative "main"
require "test/unit"

include Main

class MainTest < Test::Unit::TestCase
  def test_simple()
    assert_equal([], rotate([], 0))
    assert_equal([1,2,3], rotate([1,2,3], 0))
    assert_equal([2,1], rotate([1,2], 1))
    assert_equal([3,1,2], rotate([1,2,3], 1))
    assert_equal([5,6,7,1,2,3,4], rotate([1,2,3,4,5,6,7], 3))
  end
end
