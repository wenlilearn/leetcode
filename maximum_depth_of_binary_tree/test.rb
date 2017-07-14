require_relative "main"
require "test/unit"

include Main

class MainTest < Test::Unit::TestCase
  def test_simple()
    assert_equal(0, max_depth(nil))
    assert_equal(1, max_depth(TreeNode.new(1)))
    assert_equal(2, max_depth(TreeNode.new(1, TreeNode.new(2))))
  end
end
