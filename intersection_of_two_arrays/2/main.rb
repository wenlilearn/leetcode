=begin
 Given two arrays, write a function to compute their intersection.

Example:

Given nums1 = [1, 2, 2, 1], nums2 = [2, 2], return [2].

Note:

    Each element in the result must be unique.

    The result can be in any order.

=end

module Main
# @param {Integer[]} nums1
# @param {Integer[]} nums2
# @return {Integer[]}
def intersection(nums1, nums2)
  if nums1.length == 0 || nums2.length == 0
    return []
  end

  res = []
  nums1.sort!

  nums2.each do |num2|
    s = 0
    e = nums1.length - 1

    while(s + 1 < e)
      m = (s + e) / 2

      if nums1[m] < num2
        s = m
      else
        e = m
      end
    end

    if nums1[s] == num2
      res << nums1[s]
    end

    if nums1[e] == num2
      res << nums1[e]
    end
  end
  res.uniq
end
end
