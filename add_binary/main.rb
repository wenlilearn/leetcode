=begin
Given two binary strings, return their sum (also a binary string).

For example,
a = "11"
b = "1"
Return "100".
=end

module Main
# @param {String} a
# @param {String} b
# @return {String}
  def add_binary(a, b)
    (a.to_i(2) + b.to_i(2)).to_s(2)
  end
end
