=begin
Given a binary array, find the maximum number of consecutive 1s in this array.

Example 1:

Input: [1,1,0,1,1,1]
Output: 3
Explanation: The first two digits or the last three digits are consecutive 1s.
    The maximum number of consecutive 1s is 3.

Note:

    The input array will only contain 0 and 1.
    The length of input array is a positive integer and will not exceed 10,000

=end

module Main
# @param {Integer[]} nums
# @return {Integer}
def find_max_consecutive_ones(nums)
    dp = Array.new(nums.length + 1, 0)
    dp[0] = 0
    i = 1

    nums.each do |num|
      if num == 1
        dp[i] = dp[i - 1] + 1
      else
        dp[i] = 0
      end
      i += 1
    end
    dp.max
end
end
