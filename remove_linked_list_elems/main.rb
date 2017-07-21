=begin
Remove all elements from a linked list of integers that have value val.

Example
Given: 1 --> 2 --> 6 --> 3 --> 4 --> 5 --> 6, val = 6
Return: 1 --> 2 --> 3 --> 4 --> 5
=end

# Definition for singly-linked list.
class ListNode
    attr_accessor :val, :next
    def initialize(val, n = nil)
        @val = val
        @next = n
    end

    def ==(other)
      if other.nil?
        return self.nil?
      end

      @val == other.val
    end
end

module Main

# @param {ListNode} head
# @param {Integer} val
# @return {ListNode}
def remove_elements(head, val)
  if head == nil
    return head
  end

  dummy_head = ListNode.new(nil)
  dummy_head.next = head

  prev = dummy_head
  cur = head

  while(cur) do
    if cur == nil
      return head
    end

    if cur.val == val
      prev.next = cur.next
      cur = cur.next
    else
      prev = cur
      cur = cur.next
    end
  end

  dummy_head.next
end
end
