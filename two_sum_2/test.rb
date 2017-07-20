require_relative "main"
require "test/unit"

include Main

class MainTest < Test::Unit::TestCase
  def test_simple()
    assert_equal([], two_sum([], 10))
    assert_equal([], two_sum([1,2,3], nil))
    assert_equal([1,2], two_sum([1,2], 3))
    assert_equal([1,2], two_sum([0,0], 0))
    assert_equal([1,3], two_sum([1,1,2,3], 3))
  end
end
