=begin
Given an array of integers and an integer k, find out whether there are two distinct indices i and j in the array such that nums[i] = nums[j] and the absolute difference between i and j is at most k.
=end

module Main
  # @param {Integer[]} nums
  # @param {Integer} k
  # @return {Boolean}
  def contains_nearby_duplicate(nums, k)
    if nums.empty?
      return false
    elsif nums.length == 1
      return false
    end

    value_vs_index = Hash.new()

    nums.each_with_index do |num, idx|
      value_vs_index[num] ||= Array.new()
      value_vs_index[num] << idx
    end

    value_vs_index.each do |_key, v|
      if v.length == 1
        next
      end

      for i in 1...(v.length)
        for j in 0...i
          if (v[i] - v[j]).abs <= k
            return true
          end
        end
      end
    end

    return false
  end
end
