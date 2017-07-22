=begin
Reverse bits of a given 32 bits unsigned integer.

For example, given input 43261596 (represented in binary as 00000010100101000001111010011100), return 964176192 (represented in binary as 00111001011110000010100101000000).
=end

module Main
  # @param {Integer} n, a positive integer
  # @return {Integer}
  def reverse_bits(n)
    if n == 0
      return 0
    end

    cur_n = n
    cur_bit = 0
    cur_m = 0

    while(cur_bit < 32) do
      cur_m |= (((cur_n & (1 << (31 - cur_bit))) >> (31 - cur_bit)) << cur_bit)
      cur_bit += 1
    end
    cur_m
  end
end
