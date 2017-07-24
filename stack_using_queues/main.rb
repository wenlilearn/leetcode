=begin
Implement the following operations of a stack using queues.

    push(x) -- Push element x onto stack.
    pop() -- Removes the element on top of the stack.
    top() -- Get the top element.
    empty() -- Return whether the stack is empty.

Notes:

    You must use only standard operations of a queue -- which means only push to back, peek/pop from front, size, and is empty operations are valid.
    Depending on your language, queue may not be supported natively. You may simulate a queue by using a list or deque (double-ended queue), as long as you use only standard operations of a queue.
    You may assume that all operations are valid (for example, no pop or top operations will be called on an empty stack).
=end

module Main
  class MyStack
    # Initialize your data structure here.
    def initialize()
      @q1 = []
      @q2 = []
    end

    # Push element x onto stack.
    # :type x: Integer
    # :rtype: Void
    def push(x)
      @q1 << x
    end


    # Removes the element on top of the stack and returns that element.
    # :rtype: Integer
    def pop()
      @q2 = @q1[0...-1]
      top = @q1[-1]
      @q1 = @q2
      top
    end


    # Get the top element.
    # :rtype: Integer
    def top()
      @q1[-1]
    end

    # Returns whether the stack is empty.
    # :rtype: Boolean
    def empty()
      @q1.empty? && @q2.empty?
    end
  end

# Your MyStack object will be instantiated and called as such:
# obj = MyStack.new()
# obj.push(x)
# param_2 = obj.pop()
# param_3 = obj.top()
# param_4 = obj.empty()
end
