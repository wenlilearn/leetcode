=begin
Write an algorithm to determine if a number is "happy".

A happy number is a number defined by the following process: Starting with any positive integer, replace the number by the sum of the squares of its digits, and repeat the process until the number equals 1 (where it will stay), or it loops endlessly in a cycle which does not include 1. Those numbers for which this process ends in 1 are happy numbers.

Example: 19 is a happy number

    1**2 + 9**2 = 82
    8**2 + 2**2 = 68
    6**2 + 8**2 = 100
    1**2 + 0**2 + 0**2 = 1
=end

module Main
  def next_number(n)
    n.to_s(10).split("").map{ |digit| digit.to_i ** 2 }.inject(:+)
  end

  # @param {Integer} n
  # @return {Boolean}
  def is_happy(n)
    if n == 0
      return false
    end

    slow = n
    fast = n

    loop do
      slow = next_number(slow)
      fast = next_number(fast)
      fast = next_number(fast)

      break if slow == fast
    end

    slow == 1
  end
end
