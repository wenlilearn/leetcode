require_relative "main"
require "test/unit"

include Main

class MainTest < Test::Unit::TestCase
  def test_simple()
    assert_equal(true, is_symmetric(nil))
    assert_equal(true, is_symmetric(TreeNode.new(1)))

    assert_equal(false, is_symmetric(TreeNode.new(1, TreeNode.new(2), TreeNode.new(3))))
    assert_equal(true, is_symmetric(TreeNode.new(1, TreeNode.new(2), TreeNode.new(2))))
  end
end
