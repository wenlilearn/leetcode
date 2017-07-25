=begin


Given a binary search tree (BST), find the lowest common ancestor (LCA) of two given nodes in the BST.

According to the definition of LCA on Wikipedia: “The lowest common ancestor is defined between two nodes v and w as the lowest node in T that has both v and w as descendants (where we allow a node to be a descendant of itself).”

        _______6______
       /              \
    ___2__          ___8__
   /      \        /      \
   0      _4       7       9
         /  \
         3   5

For example, the lowest common ancestor (LCA) of nodes 2 and 8 is 6. Another example is LCA of nodes 2 and 4 is 2, since a node can be a descendant of itself according to the LCA definition.
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
  # @param {TreeNode} p
  # @param {TreeNode} q
  # @return {TreeNode}
  def lowest_common_ancestor(root, p, q)
    if root == nil
      return nil
    elsif root == p || root == q
      return root.val
    end

    left = lowest_common_ancestor(root.left, p, q)
    right = lowest_common_ancestor(root.right, p, q)

    if left && right
      return root.val
    else
      if left == nil && right != nil
        return lowest_common_ancestor(root.right, p, q)
      elsif left != nil && right == nil
        return lowest_common_ancestor(root.left, p, q)
      else
        return nil
      end
    end
  end
end
