=begin
Given a binary tree, find its maximum depth.

The maximum depth is the number of nodes along the longest path from the root node down to the farthest leaf node.
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
  def max_depth(root)
    if root == nil
      return 0
    elsif root.left == nil && root.right == nil
      return 1
    end

    1 + [max_depth(root.left), max_depth(root.right)].max
  end
end
