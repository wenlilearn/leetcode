=begin
 Write a program to check whether a given number is an ugly number.

Ugly numbers are positive numbers whose prime factors only include 2, 3, 5. For example, 6, 8 are ugly while 14 is not ugly since it includes another prime factor 7.

Note that 1 is typically treated as an ugly number.
=end

module Main
  # @param {Integer} num
  # @return {Boolean}
  def is_ugly(num)
    (2..5).each do |i|
      num /= i while num % i == 0
    end if num > 0

    num == 1
  end
end
