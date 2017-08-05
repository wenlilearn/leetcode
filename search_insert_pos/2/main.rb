=begin
Given a sorted array and a target value, return the index if the target is found. If not, return the index where it would be if it were inserted in order.

You may assume no duplicates in the array.

Here are few examples.
[1,3,5,6], 5 → 2
[1,3,5,6], 2 → 1
[1,3,5,6], 7 → 4
[1,3,5,6], 0 → 0
=end

module Main
  def search_insert(nums, target)
    if nums == []
      return 0
    elsif target <= nums[0]
      return 0
    elsif target > nums[-1]
      return nums.length
    elsif target == nums[-1]
      return nums.length - 1
    end

    s = 0
    e = nums.size - 1

    while(s + 1 < e)
      m = (s + e) / 2

      if nums[m] == target
        s = m
      elsif nums[m] < target
        s = m
      else
        e = m
      end
    end

    if nums[s] == target
      return s
    elsif nums[e] == target
      return e
    else
      return e
    end

  end
end
