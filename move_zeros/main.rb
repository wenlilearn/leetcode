=begin
 Given an array nums, write a function to move all 0's to the end of it while maintaining the relative order of the non-zero elements.

For example, given nums = [0, 1, 0, 3, 12], after calling your function, nums should be [1, 3, 12, 0, 0].
=end

module Main
  # @param {Integer[]} nums
  # @return {Void} Do not return anything, modify nums in-place instead.
  def move_zeroes(nums)
    if nums.empty?
      return
    end
    len = nums.length

    processed = 0
    idx = 0
    while(processed < len)
      if nums[idx] == 0
        nums.delete_at(idx)
        nums << 0
        idx -= 1
      end
      idx += 1
      processed += 1
    end

  end
end
