=begin
Given a binary tree, determine if it is height-balanced.

For this problem, a height-balanced binary tree is defined as a binary tree in which the depth of the two subtrees of every node never differ by more than 1.
=end

module Main
  # Definition for a binary tree node.
  class TreeNode
      attr_accessor :val, :left, :right
      def initialize(val, left = nil, right = nil)
          @val = val
          @left, @right = left, right
      end

  end

  # @param {TreeNode} root
  # @return {Boolean}
  def is_balanced(root)
    if root == nil
      return true
    elsif root.left == nil && root.right == nil
      return true
    end

    if (max_height(root.left, 0) - max_height(root.right, 0)).abs <= 1
      is_balanced(root.left) && is_balanced(root.right)
    else
      return false
    end
  end

  def max_height(root, total_sum)
    if root == nil
      return total_sum
    end

    total_sum += 1
    [max_height(root.left, total_sum), max_height(root.right, total_sum)].max()
  end
end
