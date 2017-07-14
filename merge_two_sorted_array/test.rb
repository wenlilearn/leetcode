require_relative "main"
require "test/unit"

include Main

class MainTest < Test::Unit::TestCase
  def test_simple()
    nums1 = [0]
    nums2 = [1]
    assert_equal([1], merge(nums1, 0, nums2, 1))

    nums1 = []
    nums2 = []
    assert_equal([], merge(nums1, 0, nums2, 0))

    nums1 = [1,2,3]
    nums2 = []
    assert_equal([1,2,3], merge(nums1, 3, nums2, 0))

    nums1 = [2,3]
    nums2 = [1,4,5]
    merge(nums1, 2, nums2, 3)
    assert_equal([1,2,3,4,5], nums1)

    nums1 = [1,0]
    nums2 = [2]
    merge(nums1, 2, nums2, 3)
    assert_equal([1,2], nums1)
  end
end
