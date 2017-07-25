=begin
Given a singly linked list, determine if it is a palindrome.

Follow up:
Could you do it in O(n) time and O(1) space?
=end

class ListNode
    attr_accessor :val, :next
    def initialize(val, n = nil)
        @val = val
        @next = n
    end
end
module Main
# Definition for singly-linked list.

# # @param {ListNode} head
# # @return {Boolean}
# def is_palindrome(head)
#   if head == nil || head.next == nil
#     return true
#   end
#
#   head_ref = []
#
#   cur = head
#   while(cur != nil) do
#     head_ref << cur
#     cur = cur.next
#   end
#
#   for i in 0...(head_ref.length / 2)
#     if head_ref[i].val != head_ref[head_ref.length - 1 - i].val
#       return false
#     end
#   end
#
#   return true
# end

def is_palindrome(head)
    if head == nil || head.next == nil
      return true
    end

    head_vals = []

    cur = head
    while(cur != nil) do
      head_vals << cur.val
      cur = cur.next
    end

    head_vals.reverse == head_vals
end
end
