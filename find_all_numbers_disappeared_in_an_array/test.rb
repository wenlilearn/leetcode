require_relative "main"
require "test/unit"

include Main

class MainTest < Test::Unit::TestCase
  def test_simple()
    assert_equal([], find_disappeared_numbers([]))
    assert_equal([5,6], find_disappeared_numbers([1,2,3,4,7,7,8,8]))
    assert_equal([2], find_disappeared_numbers([1,1]))
  end
end
