=begin
Suppose an array sorted in ascending order is rotated at some pivot unknown to you beforehand.

(i.e., 0 1 2 4 5 6 7 might become 4 5 6 7 0 1 2).

Find the minimum element.

You may assume no duplicate exists in the array.
=end

module Main
# @param {Integer[]} nums
# @return {Integer}
def find_min(nums)
  if nums.size == 0
    return nil
  elsif nums.size == 1
    return nums[0]
  end

  s = 0
  e = nums.size - 1
  cur_min = nums[-1]

  while(s + 1 < e)
    m = (s + e) / 2

    if nums[m] < cur_min
      e = m
      cur_min = nums[m]
    elsif
      s = m
    end
  end

  return [nums[s], nums[e]].min
end
end
