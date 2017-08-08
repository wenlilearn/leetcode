=begin
 Given an unsorted array of integers, find the length of longest increasing subsequence.

For example,
Given [10, 9, 2, 5, 3, 7, 101, 18],
The longest increasing subsequence is [2, 3, 7, 101], therefore the length is 4. Note that there may be more than one LIS combination, it is only necessary for you to return the length.

Your algorithm should run in O(n2) complexity.

Follow up: Could you improve it to O(n log n) time complexity?
=end

module Main
# @param {Integer[]} nums
# @return {Integer}
def length_of_lis(nums)
    if nums.length == 0
      return 0
    end
    dp = Array.new(nums.length, 1)

    dp[0] = 1

    for i in 1...(nums.length)
      for j in 0...i
        if nums[i] > nums[j]
            dp[i] = [dp[j] + 1, dp[i]].max
        end
      end
    end

    return dp.max
end
end
