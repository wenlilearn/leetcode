=begin
Given a positive integer num, write a function which returns True if num is a perfect square else False.

Note: Do not use any built-in library function such as sqrt.

Example 1:

Input: 16
Returns: True

Example 2:

Input: 14
Returns: False

=end

module Main
# @param {Integer} num
# @return {Boolean}
def is_perfect_square(num)
  if num < 0
    return false 
  end

  if num == 0
    return true
  end

  res = 1
  loop do
    if(res ** 2 == num) 
      return true 
    elsif(res ** 2 > num)
      return false
    end
    res += 1
  end
end  
end
