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
  # working solution 1
  # def search_insert(nums, target)
  #   if nums == []
  #     return 0
  #   elsif target <= nums[0]
  #     return 0
  #   elsif target > nums[-1]
  #     return nums.length
  #   elsif target == nums[-1]
  #     return nums.length - 1
  #   end
  #
  #   nums.each_with_index do |val, index|
  #     if val >= target
  #       return index
  #     end
  #   end
  # end

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

    do_search_insert(nums, target, 0, nums.length - 1)
  end

  def do_search_insert(nums, target, lower, upper)
    if lower > upper
      return lower
    end

    num_index = (lower + upper) / 2

    if nums[num_index] > target
      do_search_insert(nums, target, lower, num_index - 1)
    elsif nums[num_index] < target
      do_search_insert(nums, target, num_index + 1, upper)
    else nums[num_index] == target
      num_index
    end
  end
end
