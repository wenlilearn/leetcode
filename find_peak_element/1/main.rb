=begin
A peak element is an element that is greater than its neighbors.

Given an input array where num[i] ≠ num[i+1], find a peak element and return its index.

The array may contain multiple peaks, in that case return the index to any one of the peaks is fine.

You may imagine that num[-1] = num[n] = -∞.

For example, in array [1, 2, 3, 1], 3 is a peak element and your function should return the index number 2.
=end

module Main
# @param {Integer[]} nums
# @return {Integer}
def find_peak_element(nums)
    s = 0
    e = nums.length - 1

    while(s + 1 < e)
      m = (s + e) / 2

      if (nums[m] < nums[m - 1])
        e = m
      elsif (nums[m] < nums[m + 1])
        s = m
      else
        s = m
      end
    end

    if nums[s] < nums[e]
      return e
    else
      return s
    end
end
end
