require_relative "main"
require "test/unit"

include Main

class MainTest < Test::Unit::TestCase
  def test_simple()
    assert_equal(nil,  delete_duplicates(nil))

    l1 = ListNode.new(1)
    assert_equal([1], get_list_vals(delete_duplicates(l1)))

    l2 = ListNode.new(1, ListNode.new(2, ListNode.new(3)))
    assert_equal([1,2,3], get_list_vals(delete_duplicates(l2)))

    l3 = ListNode.new(1, ListNode.new(1, ListNode.new(3)))
    assert_equal([1,3], get_list_vals(delete_duplicates(l3)))
  end
end
