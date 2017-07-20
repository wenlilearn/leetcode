=begin
Write program to find the node at which the intersection of two singly linked lists begins.

For example, the following two linked lists:

A:          a1 → a2
                   ↘
                     c1 → c2 → c3
                   ↗
B:     b1 → b2 → b3

begin to intersect at node c1.

Notes:

    If the two linked lists have no intersection at all, return null.
    The linked lists must retain their original structure after the function returns.
    You may assume there are no cycles anywhere in the entire linked structure.
    Your code should preferably run in O(n) time and use only O(1) memory.
=end

require 'set'

class ListNode
  attr_accessor :val, :next

  def initialize(val, n = nil)
    @val = val
    @next = n
  end
end

module Main
 def get_intersection_node(h1, h2)
    if h1.nil? || h2.nil?
      return nil
    end

    cur1 = h1
    cur2 = h2

    nil
 end
end
