=begin
Given an array nums containing n + 1 integers where each integer is between 1 and n (inclusive), prove that at least one duplicate number must exist. Assume that there is only one duplicate number, find the duplicate one.

Note:

    You must not modify the array (assume the array is read only).
    You must use only constant, O(1) extra space.
    Your runtime complexity should be less than O(n2).
    There is only one duplicate number in the array, but it could be repeated more than once.
=end

module Main
# @param {Integer[]} nums
# @return {Integer}
def find_duplicate(nums)
    nums.sort!()
    if nums.length == 0 || nums.length == 1
      return nil
    end

    nums.each_with_index do |num, idx|
      s = idx + 1
      e = nums.length - 1
      res = binary_search(nums[s..e], num, 0, (e - s))
      if res != -1
        return num
      end
    end

    return nil
end

def binary_search(nums, num, s, e)
  if s > e
    return -1
  end

  while(s + 1 < e)
    m = (s + e) / 2

    if nums[m] == num
      s = m
    elsif nums[m] < m
      s = m
    else
      e = m
    end
  end

  if nums[s] == num
    return num
  end

  if nums[e] == num
    return num
  end

  return -1
end
end
