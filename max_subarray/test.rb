require_relative "main"
require "test/unit"

include Main

class MainTest < Test::Unit::TestCase
  def test_simple()

    assert(0 == max_sub_array([]))
    assert(1 == max_sub_array([1]))
    assert(6 == max_sub_array([1,2,3]))
    assert(5 == max_sub_array([1,-1,2,3,-2]))
    assert(6 == max_sub_array([-2,1,-3,4,-1,2,1,-5,4]))
    assert(-1 == max_sub_array([-2, -1]))
  end
end
