require_relative "main"
require "test/unit"

include Main

class MainTest < Test::Unit::TestCase
  def test_simple()
    assert_equal(nil, get_intersection_node(nil, nil))
    assert_equal(nil, get_intersection_node(nil, ListNode.new(1)))
    assert_equal(nil, get_intersection_node(ListNode.new(2), ListNode.new(1)))
    
    common_list = ListNode.new(2, ListNode.new(3, ListNode.new(4)))
    assert_equal(common_list, get_intersection_node(ListNode.new(1, common_list), ListNode.new(-1, common_list)))
  end
end
