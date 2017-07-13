=begin
Given a sorted linked list, delete all duplicates such that each element appear only once.

For example,
Given 1->1->2, return 1->2.
Given 1->1->2->3->3, return 1->2->3.

=end

# Definition for singly-linked list.
class ListNode
    attr_accessor :val, :next
    def initialize(val, n = nil)
        @val = val
        @next = n
    end
end

module Main

  # @param {ListNode} head
  # @return {ListNode}
  def delete_duplicates(head)
    if head == nil || head.next == nil
      return head
    end

    do_delete_duplicates(head)
  end

  def do_delete_duplicates(head)
    if head == nil  || head.next == nil
      return head
    end

    if head.val == head.next.val
      head.next = head.next.next
      do_delete_duplicates(head)
      return head
    else
      do_delete_duplicates(head.next)
      return head
    end
  end

  def get_list_vals(head)
    if head == nil
      return nil
    elsif head.next == nil
      return [head.val]
    else
      res = []
      while(head != nil)
        res << head.val
        head = head.next
      end
      res
    end

  end
end
