require_relative "main"
require "test/unit"

include Main

class MainTest < Test::Unit::TestCase
  def test_simple()
    move_zeroes(nums = [])
    assert_equal([], nums )

    move_zeroes(nums = [0])
    assert_equal([0], nums)

    move_zeroes(nums = [0,1,0])
    assert_equal([1,0,0], nums)

    move_zeroes(nums = [0,1,0,3,12])
    assert_equal([1,3,12,0,0], nums)
  end
end
