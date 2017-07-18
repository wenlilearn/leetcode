require_relative "main"
require "test/unit"

include Main

class MainTest < Test::Unit::TestCase
  def test_simple()
    assert_equal(nil, sorted_array_to_bst([]))
    assert_equal(TreeNode.new(1), sorted_array_to_bst([1]))

    assert_equal(TreeNode.new(2, TreeNode.new(1), TreeNode.new(3)), sorted_array_to_bst([1,2,3]))

    assert_equal(TreeNode.new(2, TreeNode.new(1), TreeNode.new(3, nil, TreeNode.new(4))), sorted_array_to_bst([1,2,3,4]))
  end
end
