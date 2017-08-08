require_relative "main"
require "test/unit"

include Main

class MainTest < Test::Unit::TestCase
  def test_simple()
    assert_equal(0, length_of_lis([]))
    assert_equal(4, length_of_lis([10,9,2,5,3,7,101,18]))
    assert_equal(2, length_of_lis([3,1,4]))
    assert_equal(3, length_of_lis([4,10,4,3,8,9]))
    assert_equal(2, length_of_lis([-2,-1]))
    assert_equal(6, length_of_lis([1,3,6,7,9,4,10,5,6]))
  end
end
