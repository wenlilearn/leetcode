=begin
Given an array of integers where 1 ≤ a[i] ≤ n (n = size of array), some elements appear twice and others appear once.

Find all the elements of [1, n] inclusive that do not appear in this array.

Could you do it without extra space and in O(n) runtime? You may assume the returned list does not count as extra space.

Example:

Input:
[4,3,2,7,8,2,3,1]

Output:
[5,6]

=end

module Main
# @param {Integer[]} nums
# @return {Integer[]}
def find_disappeared_numbers(nums)
  if nums.empty? || nums.length == 1
    return []
  end
   res = [*1..nums.length]
   res - nums
end  
end
