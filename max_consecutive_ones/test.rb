require_relative "main"
require "test/unit"

include Main

class MainTest < Test::Unit::TestCase
  def test_simple()
    assert_equal(0, find_max_consecutive_ones([]))
    assert_equal(0, find_max_consecutive_ones([0]))
    assert_equal(3, find_max_consecutive_ones([1,1,0,1,1,1]))
  end
end
