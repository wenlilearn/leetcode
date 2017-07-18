require_relative "main"
require "test/unit"

include Main

class MainTest < Test::Unit::TestCase
  def test_simple()
    assert_equal(0, min_depth(nil))
    assert_equal(1, min_depth(TreeNode.new(1)))
    assert_equal(2, min_depth(TreeNode.new(1, TreeNode.new(2))))

    assert_equal(2, min_depth(TreeNode.new(1, TreeNode.new(2), TreeNode.new(3, TreeNode.new(4)))))
  end
end
