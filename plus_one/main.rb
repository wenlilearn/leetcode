=begin
Given a non-negative integer represented as a non-empty array of digits, plus one to the integer.

You may assume the integer do not contain any leading zero, except the number 0 itself.

The digits are stored such that the most significant digit is at the head of the list.
=end
module Main
  # @param {Integer[]} digits
  # @return {Integer[]}
  def plus_one(digits)
    if digits == []
      return []
    end

    carry = 1
    length = digits.length

    digits = digits.reverse

    digits.each_with_index do |val, i|
        val = val + carry

        if val >= 10
          carry = 1
          val = val % 10
        else
          carry = 0
        end

        digits[i] = val
      end

      digits = digits.reverse

      if carry == 1
        digits.insert(0, carry)
        carry = 0
      end
      digits

    end

end
