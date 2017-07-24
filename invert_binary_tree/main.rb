=begin
Invert a binary tree.

     4
   /   \
  2     7
 / \   / \
1   3 6   9

to

     4
   /   \
  7     2
 / \   / \
9   6 3   1
=end

module Main
# Definition for a binary tree node.
# class TreeNode
#     attr_accessor :val, :left, :right
#     def initialize(val)
#         @val = val
#         @left, @right = nil, nil
#     end
# end

# @param {TreeNode} root
# @return {TreeNode}
  def invert_tree(root)
    if root.nil? || (root.left == nil && root.right == nil)
      return root
    end

    left = root.left
    right = root.right

    root.left = right
    root.right = left

    invert_tree(root.left) if root.left
    invert_tree(root.right) if root.right

    root
  end
end
