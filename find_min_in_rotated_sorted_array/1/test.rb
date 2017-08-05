require_relative "main"
require "test/unit"

include Main

class MainTest < Test::Unit::TestCase
  def test_simple()
    assert_equal(0, find_min([4,5,6,7,0,1,2]))
    assert_equal(1, find_min([1,2,3,4,5,6,7]))
    assert_equal(0, find_min([3,2,1,0]))
  end
end
