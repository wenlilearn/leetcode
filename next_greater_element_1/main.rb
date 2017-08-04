=begin
 You are given two arrays (without duplicates) nums1 and nums2 where nums1’s elements are subset of nums2. Find all the next greater numbers for nums1's elements in the corresponding places of nums2.

The Next Greater Number of a number x in nums1 is the first greater number to its right in nums2. If it does not exist, output -1 for this number.

Example 1:
Input: nums1 = [4,1,2], nums2 = [1,3,4,2].
Output: [-1,3,-1]

Explanation:
    For number 4 in the first array, you cannot find the next greater number for it in the second array, so output -1.

    For number 1 in the first array, the next greater number for it in the second array is 3.

    For number 2 in the first array, there is no next greater number for it in the second array, so output -1.

Example 2:
Input: nums1 = [2,4], nums2 = [1,2,3,4].
Output: [3,-1]

Explanation:
    For number 2 in the first array, the next greater number for it in the second array is 3.

    For number 4 in the first array, there is no next greater number for it in the second array, so output -1.
Note:
    All elements in nums1 and nums2 are unique.

    The length of both nums1 and nums2 would not exceed 1000.

=end

module Main
# @param {Integer[]} find_nums
# @param {Integer[]} nums
# @return {Integer[]}
def next_greater_element(find_nums, nums)
  res = []
  find_nums.each do |find_num|
    pos = nums.find_index(find_num)
    max = -1
    for i in (pos + 1)...(nums.length)
      if nums[i] > find_num
        max = nums[i]
        break
      end
    end
    res << max
  end
  res
end

def do_binary_search(num, first_nums, left, right)
  if left > right
    return -1
  elsif first_num[left] && first_nums[left] <= first_nums && first_num[right] && first_nums[right] > num
    return first_nums[right]
  end

  mid = (left + right) / 2
  if first_nums[mid] > num
    do_binary_search(num, first_nums, left, mid)
  else
    return -1
  end
end
end
