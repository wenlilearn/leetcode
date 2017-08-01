=begin
Given a non-empty array of integers, return the third maximum number in this array. If it does not exist, return the maximum number. The time complexity must be in O(n).

Example 1:

Input: [3, 2, 1]

Output: 1

Explanation: The third maximum is 1.

Example 2:

Input: [1, 2]

Output: 2

Explanation: The third maximum does not exist, so the maximum (2) is returned instead.

Example 3:

Input: [2, 2, 3, 1]

Output: 1

Explanation: Note that the third maximum here means the third maximum distinct number.
Both numbers with value 2 are both considered as second maximum.

=end

module Main
# @param {Integer[]} nums
# @return {Integer}
def third_max(nums)
  nums = nums.uniq
  if nums.length == 1
    return nums[0]
  elsif nums.length == 2
    return nums.max
  end


  cur_max = nums.max
  for i in 1..3 do
    if nums.empty?
      return cur_max
    end
    cur_max = nums.max
    nums.delete(cur_max)
  end
  cur_max
end  
end
