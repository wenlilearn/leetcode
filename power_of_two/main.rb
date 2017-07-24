=begin
Given an integer, write a function to determine if it is a power of two. 
=end

module Main
# @param {Integer} n
# @return {Boolean}
def is_power_of_two(n)
    if n == 0
        return false
    elsif n < 0
        return false
    end
    
    Math.log2(n.abs) == Math.log2(n.abs).to_i
end  
end
