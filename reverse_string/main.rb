=begin
Write a function that takes a string as input and returns the string reversed.

Example:
Given s = "hello", return "olleh". 
=end

module Main
# @param {String} s
# @return {String}
def reverse_string(s)
    #first
#    s.reverse 
    # second
    if s.length == 0 || s.length == 1
        return s
    end
    i = 0
    j = s.length - 1

    while(i < j)
        tmp = s[i]
        s[i] = s[j]
        s[j] = tmp
        i += 1
        j -= 1
    end
    return s
end  
end
