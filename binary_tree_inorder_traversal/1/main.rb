=begin
Given a binary tree, return the inorder traversal of its nodes' values.

For example:
Given binary tree [1,null,2,3],

   1
    \
     2
    /
   3

return [1,3,2].

Note: Recursive solution is trivial, could you do it iteratively?
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
  # @return {Integer[]}
  def inorder_traversal(root)
    if root == nil
      return []
    end

    res = []
    stack = []
    cur_root = root
    while(cur_root != nil || !stack.empty?())
      while(cur_root)
        stack.push(cur_root)
        cur_root = cur_root.left;
      end
      cur_root = stack.pop()
      res << cur_root.val
      cur_root = cur_root.right
    end
    return res

  end
end
