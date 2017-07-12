require_relative "main"
require "test/unit"

include Main

class MainTest < Test::Unit::TestCase
  def test_simple()
    assert_equal([], plus_one([]))
    assert_equal([1,0], plus_one([9]))
    assert_equal([2], plus_one([1]))
    assert_equal([1,2,3], plus_one([1,2,2]))
    assert_equal([1,0,0], plus_one([0,9,9]))
  end
end
