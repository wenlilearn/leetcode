=begin
 Implement the following operations of a queue using stacks.

    push(x) -- Push element x to the back of queue.
    pop() -- Removes the element from in front of queue.
    peek() -- Get the front element.
    empty() -- Return whether the queue is empty.

Notes:

    You must use only standard operations of a stack -- which means only push to top, peek/pop from top, size, and is empty operations are valid.
    Depending on your language, stack may not be supported natively. You may simulate a stack by using a list or deque (double-ended queue), as long as you use only standard operations of a stack.
    You may assume that all operations are valid (for example, no pop or peek operations will be called on an empty queue).

=end

module Main
class MyQueue

=begin
    Initialize your data structure here.
=end
    def initialize()
        @s1 = []
        @s2 = []
    end


=begin
    Push element x to the back of queue.
    :type x: Integer
    :rtype: Void
=end
    def push(x)
      @s1.push(x)
    end


=begin
    Removes the element from in front of queue and returns that element.
    :rtype: Integer
=end
    def pop()
      if !@s2.empty?
        @s2.pop()
      else
        while(!@s1.empty?)
          @s2.push(@s1.pop())
        end
        @s2.pop()
      end
    end


=begin
    Get the front element.
    :rtype: Integer
=end
    def peek()
      if !@s2.empty?
        @s2[-1]
      else
        while(!@s1.empty?)
          @s2.push(@s1.pop())
        end
        @s2[-1]
      end
    end


=begin
    Returns whether the queue is empty.
    :rtype: Boolean
=end
    def empty()
      @s1.empty? && @s2.empty?
    end


end

# Your MyQueue object will be instantiated and called as such:
# obj = MyQueue.new()
# obj.push(x)
# param_2 = obj.pop()
# param_3 = obj.peek()
# param_4 = obj.empty()
end
