=begin
 Given an integer, write an algorithm to convert it to hexadecimal. For negative integer, two’s complement method is used.

Note:

    All letters in hexadecimal (a-f) must be in lowercase.
    The hexadecimal string must not contain extra leading 0s. If the number is zero, it is represented by a single zero character '0'; otherwise, the first character in the hexadecimal string will not be the zero character.
    The given number is guaranteed to fit within the range of a 32-bit signed integer.
    You must not use any method provided by the library which converts/formats the number to hex directly.

Example 1:

Input:
26

Output:
"1a"

Example 2:

Input:
-1

Output:
"ffffffff"

=end

module Main
  # @param {Integer} num
  # @return {String}
  def to_hex(num)
      if num == 0
        return "0"
      end

      bits = 31.downto(0).map{ |bit| num[bit] }.join("")
      i = 0
      res = ""
      loop do
        hex = bits[i..(i+3)].to_i(2).to_s(16)
        res += hex unless res.empty? && hex == "0"
        i += 4
        break if i >= 32
      end
      res
  end
end
