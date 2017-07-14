require_relative "main"
require "test/unit"

include Main

class MainTest < Test::Unit::TestCase
  def test_simple()
    assert_equal(true, is_same_tree(nil, nil))
    assert_equal(false, is_same_tree(TreeNode.new(10, nil, nil), nil))

    assert_equal(true, is_same_tree(
      TreeNode.new(2, TreeNode.new(1, nil, nil), TreeNode.new(3, nil, nil)),
      TreeNode.new(2, TreeNode.new(1, nil, nil), TreeNode.new(3, nil, nil))
    ))

    assert_equal(false, is_same_tree(
      TreeNode.new(2, TreeNode.new(1, nil, nil), TreeNode.new(4, nil, nil)),
      TreeNode.new(2, TreeNode.new(1, nil, nil), TreeNode.new(3, nil, nil))
    ))
  end
end
