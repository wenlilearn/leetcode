=begin
Given a binary tree, return the bottom-up level order traversal of its nodes' values. (ie, from left to right, level by level from leaf to root).

For example:
Given binary tree [3,9,20,null,null,15,7],
    3
   / \
  9  20
    /  \
   15   7
return its bottom-up level order traversal as:
[
  [15,7],
  [9,20],
  [3]
]
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
	# @return {Integer[][]}
	def level_order_bottom(root)
    if root == nil
      return []
    end

    bfs_queue = [root]
    next_level_queue = []
    level_val = []
    total_level_val = []
    cur = nil

    while(true) do
      while(!bfs_queue.empty?) do
        cur = bfs_queue.shift
        level_val << cur.val
        if cur.left != nil
          next_level_queue << cur.left
        end
        if cur.right != nil
          next_level_queue << cur.right
        end
      end
      total_level_val << level_val.clone
      level_val.clear

      if next_level_queue.empty?
        return total_level_val.reverse
      else
        bfs_queue = next_level_queue.clone
        next_level_queue.clear
        total_level_val.reverse
      end
    end
  end
end
