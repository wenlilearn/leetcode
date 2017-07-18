require_relative "main"
require "test/unit"

include Main

class MainTest < Test::Unit::TestCase
  def test_simple()
    assert_equal([], level_order_bottom(nil))
    assert_equal([[1]], level_order_bottom(TreeNode.new(1)))

    assert_equal([[15,7],[9,20],[3]], level_order_bottom(TreeNode.new(3, TreeNode.new(9), TreeNode.new(20, TreeNode.new(15), TreeNode.new(7)))))
  end
end
