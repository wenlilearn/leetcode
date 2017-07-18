require_relative "main"
require "test/unit"

include Main

class MainTest < Test::Unit::TestCase
  def test_simple()
    assert_equal(true, is_balanced(nil))
    assert_equal(true, is_balanced(TreeNode.new(1)))
    assert_equal(true, is_balanced(TreeNode.new(1, TreeNode.new(2))))

    assert_equal(false, is_balanced(TreeNode.new(1, TreeNode.new(2, TreeNode.new(3)))))

    assert_equal(false,
    is_balanced(TreeNode.new(1, TreeNode.new(2, TreeNode.new(3, TreeNode.new(4)), TreeNode.new(2, nil, TreeNode.new(3, nil, TreeNode.new(4)))))))

    assert_equal(
      false,
      is_balanced(TreeNode.new(1, TreeNode.new(2, TreeNode.new(3))))
    )
  end
end
