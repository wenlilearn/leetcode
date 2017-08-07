=begin
u have a total of n coins that you want to form in a staircase shape, where every k-th row must have exactly k coins.

Given n, find the total number of full staircase rows that can be formed.

n is a non-negative integer and fits within the range of a 32-bit signed integer.

Example 1:

n = 5

The coins can form the following rows:
¤
¤ ¤
¤ ¤

Because the 3rd row is incomplete, we return 2.

Example 2:

n = 8

The coins can form the following rows:
¤
¤ ¤
¤ ¤ ¤
¤ ¤

Because the 4th row is incomplete, we return 3.

=end

module Main
  # @param {Integer} n
  # @return {Integer}
  def arrange_coins(n)
    if n == 0
      return 0
    elsif n == 1
        return 1
    end

    s = 0
    e = n
    while(s + 1 < e)
      m = (s + e) / 2

      if ((1 + m) * m / 2) < n
        s = m
      elsif ((1 + m) * m / 2) > n
        e = m
      else
        s = m
      end
    end

    if((1 + s) * s / 2) <= n
      return s
    else
      return e
    end
  end
end
