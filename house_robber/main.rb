=begin
You are a professional robber planning to rob houses along a street. Each house has a certain amount of money stashed, the only constraint stopping you from robbing each of them is that adjacent houses have security system connected and it will automatically contact the police if two adjacent houses were broken into on the same night.

Given a list of non-negative integers representing the amount of money of each house, determine the maximum amount of money you can rob tonight without alerting the police.
=end

module Main
  # @param {Integer[]} nums
  # @return {Integer}
  def rob(nums)
      if nums.empty?
        return 0
      elsif nums.length == 1
        return nums[0]
      elsif nums.length == 2
        return nums.max
      end

      # do_rob(nums, 0, 0, Hash.new())
      dp = Array.new(nums.length, 0)

      n = nums.length
      dp[0] = 0
      dp[1] = [nums[0], nums[1]].max

      for i in 2...nums.length
        dp[i] = [dp[i - 2] + nums[i], dp[i - 1]].max
      end
      dp[-1]
  end


  def do_rob(nums, index, sum, mem)
    if index >= nums.length
      return sum
    end

    [
      do_rob(nums, index + 2, sum + nums[index], mem),
      do_rob(nums, index + 1, sum, mem)
    ].max

  end
end
