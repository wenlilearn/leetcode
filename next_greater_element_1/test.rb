require_relative "main"
require "test/unit"

include Main

class MainTest < Test::Unit::TestCase
  def test_simple()
    assert_equal([-1,3,-1], next_greater_element([4,1,2], [1,3,4,2]))
    assert_equal([3,-1], next_greater_element([2,4],[1,2,3,4]))
  end
end
