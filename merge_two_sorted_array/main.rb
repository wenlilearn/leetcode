=begin
Given two sorted integer arrays nums1 and nums2, merge nums2 into nums1 as one sorted array.

Note:
You may assume that nums1 has enough space (size that is greater or equal to m + n) to hold additional elements from nums2. The number of elements initialized in nums1 and nums2 are m and n respectively.
=end
module Main
  # @param {Integer[]} nums1
  # @param {Integer} m
  # @param {Integer[]} nums2
  # @param {Integer} n
  # @return {Void} Do not return anything, modify nums1 in-place instead.
  def merge(nums1, m, nums2, n)
    if m == 0
      nums1.concat(nums2).delete_at(0)
      return nums1
    end

    cur_m = 0
    cur_n = 0
    do_merge(nums1, m, nums2, n, cur_m, cur_n)
    nums1
  end

  def do_merge(nums1, m, nums2, n, cur_m, cur_n)
    if nums1.size == m + n
      return
    end

    if cur_m > m
      nums1.concat(nums2[cur_n..-1])
      return
    end

    if nums1[cur_m] >= nums2[cur_n]
      nums1.insert(cur_m, nums2[cur_n])
    else
      cur_m += 1
    end
    cur_n = cur_n + 1
    do_merge(nums1, m, nums2, n, cur_m, cur_n)
  end
end
