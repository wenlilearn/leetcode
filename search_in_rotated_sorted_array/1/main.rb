=begin
Suppose an array sorted in ascending order is rotated at some pivot unknown to you beforehand.

(i.e., 0 1 2 4 5 6 7 might become 4 5 6 7 0 1 2).

You are given a target value to search. If found in the array return its index, otherwise return -1.

You may assume no duplicate exists in the array.
=end

module Main
# @param {Integer[]} nums
# @param {Integer} target
# @return {Integer}
def search(nums, target)
    s = 0
    e = nums.length - 1

    while(s + 1 < e)
      m = (s + e) / 2

      if nums[m] < nums[e]
        if target >= nums[m] && target <= nums[e]
          s = m
        else
          e = m
        end
      else
        if target <= nums[m] && target >= nums[s]
          e = m
        else
          s = m
        end
      end
    end

    if nums[s] == target
      return s
    elsif nums[e] == target
      return e
    else
      return -1
    end
  end
end
