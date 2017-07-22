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

    value_vs_index = Hash.new([])

    nums.each_with_index do |num, idx|
      value_vs_index[num] << idx
    end

    value_vs_index.each do |k, v|
      if v.length <= 1
        next
      end

      if v.length % 2 == 0
        right = v.length / 2
        left = right - 1
        if v[right] - v[left] > k
          next
        end
      else
        mid = v.length / 2
        if v[mid + 1] - v[mid - 1] > k
          next
        end
      end

      diff = {}

      v.each do |num|
        
      end


    end

  end
end
