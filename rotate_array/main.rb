=begin
Rotate an array of n elements to the right by k steps.

For example, with n = 7 and k = 3, the array [1,2,3,4,5,6,7] is rotated to [5,6,7,1,2,3,4].
=end

module Main
  # @param {Integer[]} nums
  # @param {Integer} k
  # @return {Void} Do not return anything, modify nums in-place instead.
  def rotate(nums, k)
    # # sol1
    if nums.empty? || k % nums.length == 0
      return nums
    end
    #
    k = k % nums.length
    # nums.replace(nums[-k..-1] + nums[0...-k])
    # # sol2
    # nums.rotate!(-k)
    # sol3
    reversed_nums = nums.reverse
    first_part = reversed_nums[0...k].reverse
    second_part = reversed_nums[k..-1].reverse
    nums.replace(first_part + second_part)
  end
end
