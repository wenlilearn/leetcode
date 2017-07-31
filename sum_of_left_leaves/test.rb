require_relative "main"
require "test/unit"

include Main

class MainTest < Test::Unit::TestCase
  def test_simple()
    assert_equal(0, sum_of_left_leaves(TreeNode.new(1)))
    assert_equal(24, sum_of_left_leaves(TreeNode.new(3, TreeNode.new(9), TreeNode.new(20, TreeNode.new(15), TreeNode.new(7)))))
  end
end
