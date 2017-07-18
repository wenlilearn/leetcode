=begin
Given an array of integers, every element appears twice except for one. Find that single one.

Note:
Your algorithm should have a linear runtime complexity. Could you implement it without using extra memory?
=end

module Main
  # @param {Integer[]} nums
  # @return {Integer}
  # first solution
  # def single_number(nums)
  #   if nums == []
  #     return nil
  #   elsif nums.length == 1
  #     return nums[0]
  #   elsif nums.length == 2
  #     return nil
  #   end
  #
  #   map = Hash.new(0)
  #
  #   nums.each do |num|
  #     map[num] += 1
  #   end
  #
  #   map.each do |k, v|
  #     if v == 1
  #       return k
  #     end
  #   end
  # end
  def single_number(nums)
    if nums == []
      return nil
    elsif nums.length == 1
      return nums[0]
    elsif nums.length == 2
      return nil
    end

    cur = nums[0]
    for i in 1...nums.length
      cur ^= nums[i]
    end
    cur
  end
end
