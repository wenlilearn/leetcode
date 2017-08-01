require_relative "main"
require "test/unit"

include Main

class MainTest < Test::Unit::TestCase
  def test_simple()
    assert_equal(1, third_max([3,2,1]))
    assert_equal(2, third_max([2,1]))
    assert_equal(1, third_max([2,2,3,1]))
    assert_equal(2, third_max([1,1,2]))
  end
end
