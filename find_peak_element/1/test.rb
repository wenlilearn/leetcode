require_relative "main"
require "test/unit"

include Main

class MainTest < Test::Unit::TestCase
  def test_simple()
    assert_equal(2, find_peak_element([1,2,3,1]))
    assert_equal(4, find_peak_element([1,2,3,4,5]))
    assert_equal(0, find_peak_element([5,4,3,2,1]))
    assert_equal(3, find_peak_element([0,1,2,3,2,1,4,5]))
  end
end
