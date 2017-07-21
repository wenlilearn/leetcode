require_relative "main"
require "test/unit"

include Main

class MainTest < Test::Unit::TestCase
  def test_simple()
    assert_equal(nil, reverse_list(nil))

    l1 = ListNode.new(1)
    assert_equal(l1, reverse_list(l1))

    l2 = ListNode.new(1, ListNode.new(2, ListNode.new(3)))
    rev_l2 = ListNode.new(3, ListNode.new(2, ListNode.new(1)))
    assert_equal(rev_l2, reverse_list(l2))
  end
end
