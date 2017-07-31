=begin
Find the sum of all left leaves in a given binary tree.

Example:

    3
   / \
  9  20
    /  \
   15   7

There are two left leaves in the binary tree, with values 9 and 15 respectively. Return 24.

=end

# Definition for a binary tree node.
class TreeNode
    attr_accessor :val, :left, :right
    def initialize(val, left = nil, right = nil)
        @val = val
        @left, @right = left, right
    end
end

module Main
  # @param {TreeNode} root
  # @return {Integer}
  def sum_of_left_leaves(root)
    if root.nil? || (root.left == nil && root.right == nil)
      return 0
    end

    return do_sum_of_left_leaves(root)
  end

  def do_sum_of_left_leaves(root)
    if root.nil?
      return 0
    end

    sum = 0
    if root.left && root.left.left == nil && root.left.right == nil
      sum += root.left.val
    end

    sum += do_sum_of_left_leaves(root.left)
    sum += do_sum_of_left_leaves(root.right)

    return sum
  end
end
