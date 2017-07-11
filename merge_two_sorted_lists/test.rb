require_relative "main"
require "test/unit"

include Main

class MainTest < Test::Unit::TestCase
  def test_empty_lists()
    assert(nil == merge_two_lists(nil, nil))
  end

  def test_one_list
    list = ListNode.new(1, ListNode.new(2, ListNode.new(3)))
    assert(list == merge_two_lists(list, nil))
  end

  def test_two_lists
    list = ListNode.new(1, ListNode.new(3, ListNode.new(5)))
    list2 = ListNode.new(2, ListNode.new(4, ListNode.new(6)))

    full_list = ListNode.new(1, ListNode.new(2, ListNode.new(3, ListNode.new(4, ListNode.new(5, ListNode.new(6))))))

    full_list_head = full_list
    merged_list_head = merge_two_lists(list, list2)

    while(merged_list_head != nil)
      assert merged_list_head.val == full_list_head.val
      merged_list_head = merged_list_head.next
      full_list_head = full_list_head.next
    end
  end
end

class ListNode
    attr_accessor :val, :next
    def initialize(val, n = nil)
        @val = val
        @next = n
    end
end
