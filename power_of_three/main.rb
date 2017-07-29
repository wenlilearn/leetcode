=begin
Given an integer, write a function to determine if it is a power of three.
=end

module Main
  # @param {Integer} n
  # @return {Boolean}
  def is_power_of_three(n)
    if n <= 0
      return false
    end
    Math.log(n, 3).round(10) == Math.log(n, 3).round(10).to_i
  end
end
