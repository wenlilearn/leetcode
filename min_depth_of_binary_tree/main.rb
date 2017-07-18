=begin

Given a binary tree, find its minimum depth.

The minimum depth is the number of nodes along the shortest path from the root node down to the nearest leaf node.

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
  # @return {Integer}
  def min_depth(root)
    if root == nil
      return 0
    elsif root.left == nil && root.right == nil
      return 1
    end

    [do_min_depth(root.left, 0), do_min_depth(root.right, 0)].min + 1
  end

  def do_min_depth(root, min_depth)
    if root == nil
      return 1.0 / 0
    elsif root.left == nil && root.right == nil
      return min_depth + 1
    end

    min_depth += 1

    left_min = if root.left
                do_min_depth(root.left, min_depth)
              else
                1.0 / 0
              end
    right_min = if root.right
                do_min_depth(root.right, min_depth)
              else
                1.0 / 0
              end
    [left_min, right_min].min
  end
end
