require_relative "main"
require "test/unit"

include Main

class MainTest < Test::Unit::TestCase
  def test_simple()
    assert_equal([], intersect([], []))
    assert_equal([1,2,3], intersect([1,2,3], [1,2,3]))
    assert_equal([1], intersect([1,2,3], [1]))
    assert_equal([2,1,2], intersect([1,2,2], [2,1,2]))
    assert_equal([1], intersect([1], [1,1]))
  end
end
