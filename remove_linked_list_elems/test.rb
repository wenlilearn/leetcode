require_relative "main"
require "test/unit"

include Main

class MainTest < Test::Unit::TestCase
  def test_simple()
    assert_equal(nil, remove_elements(nil, 0))
    assert_equal(nil, remove_elements(ListNode.new(1), 1))

    ll = ListNode.new(1, ListNode.new(2, ListNode.new(3, ListNode.new(1))))
    res = ListNode.new(2, ListNode.new(3))

    assert_equal(res, remove_elements(ll, 1))
  end
end
