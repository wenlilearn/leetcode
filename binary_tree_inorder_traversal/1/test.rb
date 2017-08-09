require_relative "main"
require "test/unit"

include Main

class MainTest < Test::Unit::TestCase
  def test_simple()
    assert_equal([1,2,3],inorder_traversal(TreeNode.new(2, TreeNode.new(1), TreeNode.new(3))))
  end
end
