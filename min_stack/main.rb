=begin
Design a stack that supports push, pop, top, and retrieving the minimum element in constant time.

   push(x) -- Push element x onto stack.
   pop() -- Removes the element on top of the stack.
   top() -- Get the top element.
   getMin() -- Retrieve the minimum element in the stack.

Example:

MinStack minStack = new MinStack();
minStack.push(-2);
minStack.push(0);
minStack.push(-3);
minStack.getMin();   --> Returns -3.
minStack.pop();
minStack.top();      --> Returns 0.
minStack.getMin();   --> Returns -2.
=end

class MinStack
  attr_accessor :s1, :s2
=begin
    initialize your data structure here.
=end
    def initialize()
      @s1 = []
      @s2 = []
    end


=begin
    :type x: Integer
    :rtype: Void
=end
    def push(x)
      @s1.push(x)
      if(x <= get_min()){
        @s2.push(x)
      }
    end


=begin
    :rtype: Void
=end
    def pop()
      if(@s1[-1] == get_min()){
        @s2.pop()
      }
      @s1.pop()
    end


=begin
    :rtype: Integer
=end
    def top()
      @s1[-1]
    end


=begin
    :rtype: Integer
=end
    def get_min()
      @s2[-1]
    end


end

# Your MinStack object will be instantiated and called as such:
# obj = MinStack.new()
# obj.push(x)
# obj.pop()
# param_3 = obj.top()
# param_4 = obj.get_min()

module Main

end
