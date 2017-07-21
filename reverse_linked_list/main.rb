=begin
Reverse a singly linked list.
=end
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

      other.val = @val
    end
end
module Main
# Definition for singly-linked list.
  # @param {ListNode} head
  # @return {ListNode}
  def reverse_list(head)
    if head == nil
      return nil
    elsif head.next == nil
      return head
    end

    dummy_head = ListNode.new(nil)
    dummy_head.next = head

    prev = dummy_head
    cur = head
    nex = head.next

    while(cur != nil)
      nex = cur.next
      cur.next = prev

      prev = cur
      cur = nex
      if nex == nil
        break
      else
        nex = nex.next
      end
    end

    dummy_head.next.next = nil
    prev
  end
end
