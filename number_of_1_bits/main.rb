=begin
Write a function that takes an unsigned integer and returns the number of ’1' bits it has (also known as the Hamming weight).

For example, the 32-bit integer ’11' has binary representation 00000000000000000000000000001011, so the function should return 3.

Credits:
Special thanks to @ts for adding this problem and creating all test cases.
=end

module Main
  # @param {Integer} n, a positive integer
  # @return {Integer}
  def hamming_weight(n)
      #solution 1
      # n.to_s(2).split("").count{ |n| n == "1" }
      #solution 2
      sum = 0
      while(n != 0) do
        sum += 1
        n &= (n - 1)
      end
      sum
  end
end
