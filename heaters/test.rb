require_relative "main"
require "test/unit"

include Main

class MainTest < Test::Unit::TestCase
  def test_simple()
    assert_equal(1, find_radius([1,2,3],[2]))
    assert_equal(1, find_radius([1,2,3,4],[1,4]))
    assert_equal(2, find_radius([1,2,3,4,5,6,7,8,9,10], [3,8]))
    assert_equal(13, find_radius([1,2,3,5,15], [2,30]))
    assert_equal(3, find_radius([1,5], [2]))
  end
end
