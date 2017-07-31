=begin


Write a program that outputs the string representation of numbers from 1 to n.

But for multiples of three it should output “Fizz” instead of the number and for the multiples of five output “Buzz”. For numbers which are multiples of both three and five output “FizzBuzz”.

Example:

n = 15,

Return:
[
    "1",
    "2",
    "Fizz",
    "4",
    "Buzz",
    "Fizz",
    "7",
    "8",
    "Fizz",
    "Buzz",
    "11",
    "Fizz",
    "13",
    "14",
    "FizzBuzz"
]

=end

module Main
# @param {Integer} n
# @return {String[]}
def fizz_buzz(n)
    res = []
    for i in 1..n
      if i % 3 == 0 && i % 5 == 0
        puts "FizzBuzz"
          res << "FizzBuzz"
      elsif i % 3 == 0
        puts "Fizz"
          res << "Fizz"
      elsif i % 5 == 0
        puts "Buzz"
          res << "Buzz"
      else
        puts "#{i}"
          res << "#{i}"
      end
    end
    res
end 
end
