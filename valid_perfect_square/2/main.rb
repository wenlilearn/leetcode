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

  s = 0
  e = num

  while(s + 1 < e)
    m = (s + e) / 2

    if m * m < num
      s = m
    elsif m * m > num
      e = m
    else
      s = m
    end
  end

  if s * s == num
    return true
  end

  if e * e == num
    return true
  end

  return false
end
end
