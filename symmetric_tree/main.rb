=begin
Given a binary tree, check whether it is a mirror of itself (ie, symmetric around its center).

For example, this binary tree [1,2,2,3,4,4,3] is symmetric:

  1
/ \
2   2
/ \ / \
3  4 4  3
But the following [1,2,2,null,3,null,3] is not:
1
/ \
2   2
\   \
3    3
Note:
Bonus points if you could solve it both recursively and iteratively.
=end

#Definition for a binary tree node.
class TreeNode
    attr_accessor :val, :left, :right
    def initialize(val, left = nil, right = nil)
        @val = val
        @left, @right = left, right
    end
end

module Main
  # @param {TreeNode} root
  # @return {Boolean}
  def is_symmetric(root)
    if root == nil
      return true
    end

    if(root.left != nil && root.right != nil)
      if root.left.val != root.right.val
        return false
      else
        return do_is_symmetric(root.left, root.right)
      end
    else
      if(root.left == nil && root.right == nil)
        return true
      else
        return false
      end
    end
  end

  def do_is_symmetric(left, right)
    if left == nil && right == nil
      return true
    else
      if left == nil && right != nil
        return false
      elsif left != nil && right == nil
        return false
      else
        left.val == right.val && do_is_symmetric(left.left, right.right) && do_is_symmetric(left.right, right.left)
      end
    end
  end
end
