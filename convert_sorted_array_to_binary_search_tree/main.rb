=begin
Given an array where elements are sorted in ascending order, convert it to a height balanced BST.
=end

module Main
  # Definition for a binary tree node.
  class TreeNode
      attr_accessor :val, :left, :right
      def initialize(val, left = nil, right = nil)
          @val = val
          @left, @right = left, right
      end

      def ==(other)
        @val == other.val &&
        @left == other.left &&
        @right == other.right
      end
  end

  # @param {Integer[]} nums
  # @return {TreeNode}
  def sorted_array_to_bst(nums)
    if nums.empty?
      return nil
    elsif nums.length == 1
      return TreeNode.new(nums[0])
    end

    left = 0
    right = nums.length - 1

    do_sorted_array_to_bst(nums, left, right)
  end

  def do_sorted_array_to_bst(nums, left, right)
    if left > right
      return nil
    end

    mid = (left + right) / 2
    head = TreeNode.new(nums[mid])
    head.left = do_sorted_array_to_bst(nums, left, mid - 1)
    head.right = do_sorted_array_to_bst(nums, mid + 1, right)
    return head
  end
end
