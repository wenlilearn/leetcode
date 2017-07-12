=begin
Find the contiguous subarray within an array (containing at least one number) which has the largest sum.

For example, given the array [-2,1,-3,4,-1,2,1,-5,4],
the contiguous subarray [4,-1,2,1] has the largest sum = 6.
=end

module Main
  # @param {Integer[]} nums
  # @return {Integer}
  def max_sub_array(nums)
    if nums == []
      return 0
    elsif nums.length == 1
      return nums[0]
    end

    sum = 0
    max_sum = -1.0 / 0

    for num in nums
      sum += num

      max_sum = [sum, max_sum].max

      sum = 0 if sum < 0
    end
    max_sum
  end
end
