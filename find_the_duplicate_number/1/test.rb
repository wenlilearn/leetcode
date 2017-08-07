require_relative "main"
require "test/unit"

include Main

class MainTest < Test::Unit::TestCase
  def test_simple()
    assert_equal(nil, find_duplicate([]))
    assert_equal(nil, find_duplicate([1]))
    assert_equal(nil, find_duplicate([1,2,3,4,5]))
    assert_equal(2, find_duplicate([1,2,2,2,5]))
    assert_equal(1, find_duplicate([1,3,4,2,1]))
    assert_equal(1, find_duplicate([2,1,1,1,4]))
  end
end
