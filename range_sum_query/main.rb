=begin
Given an integer array nums, find the sum of the elements between indices i and j (i ≤ j), inclusive.

Example:

Given nums = [-2, 0, 3, -5, 2, -1]

sumRange(0, 2) -> 1
sumRange(2, 5) -> -1
sumRange(0, 5) -> -3

Note:

    You may assume that the array does not change.
    There are many calls to sumRange function.

=end

module Main
class NumArray
attr_accessor :range_to_sum_num, :nums
=begin
    :type nums: Integer[]
=end
    def initialize(nums)
      @nums = nums
      @range_to_sum_num = {}
    end


=begin
    :type i: Integer
    :type j: Integer
    :rtype: Integer
=end
    def sum_range(i, j)
      if @range_to_sum_num[i..j]
        @range_to_sum_num[i..j]
      else
        @range_to_sum_num[i..j] = @nums[i..j].inject(:+)
        @range_to_sum_num[i..j]
      end
    end


end

# Your NumArray object will be instantiated and called as such:
# obj = NumArray.new(nums)
# param_1 = obj.sum_range(i,j)
end
