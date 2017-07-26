=begin
Given an array containing n distinct numbers taken from 0, 1, 2, ..., n, find the one that is missing from the array.

For example,
Given nums = [0, 1, 3] return 2.

Note:
Your algorithm should run in linear runtime complexity. Could you implement it using only constant extra space complexity?
=end

module Main
  # @param {Integer[]} nums
  # @return {Integer}
  def missing_number(nums)
  #   if nums.length == 1
  #     if nums[0] == 0
  #       return 1
  #     else
  #       return 0
  #     end
  #   end
  #
  #   return 0 if nums[0] != 0
  #   (1...nums.length).each do |i|
  #     if nums[i] - nums[i - 1] != 1
  #       return nums[i] - 1
  #     end
  #   end
  #   return nums[-1] + 1
  # end

    min = nums.min
    max = nums.max

    return 0 if min != 0
    return max + 1 if max != nums.length

    ((min + max) * (nums.length + 1) / 2) - nums.inject(:+)
  end
end
