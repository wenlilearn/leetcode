module Main
=begin
Given a string containing just the characters '(', ')', '{', '}', '[' and ']', determine if the input string is valid.

The brackets must close in the correct order, "()" and "()[]{}" are all valid but "(]" and "([)]" are not.
=end

# @param {String} s
# @return {Boolean}
def is_valid(s)
    stack = []

    if s.empty?
      return true
    end

    s.each_char do |c|
      if(c == "(" || c == "[" || c == "{")
        stack.push(c)
      elsif (c == ")" || c == "]" || c == "}")
        return false if stack.empty?() 
        last = stack.pop()
        combined = last + c
        if combined != "()" && combined != "{}" && combined != "[]"
          return false
        end
      else
        return false
      end
    end

    stack.empty?
end
end
