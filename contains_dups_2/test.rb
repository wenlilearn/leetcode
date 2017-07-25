require_relative "main"
require "test/unit"

include Main

class MainTest < Test::Unit::TestCase
  def test_simple()
    assert_equal(false, contains_nearby_duplicate([], 1))
    assert_equal(false, contains_nearby_duplicate([1], 1))

    assert_equal(false, contains_nearby_duplicate([1,2,3], 1))
    assert_equal(false, contains_nearby_duplicate([1,2,3,1], 1))
    assert_equal(true, contains_nearby_duplicate([1,2,1], 2))
    assert_equal(true, contains_nearby_duplicate([-1, -1], 1))
  end
end
