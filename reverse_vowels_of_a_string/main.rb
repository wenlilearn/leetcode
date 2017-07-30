=begin
Write a function that takes a string as input and reverse only the vowels of a string.

Example 1:
Given s = "hello", return "holle".

Example 2:
Given s = "leetcode", return "leotcede".

Note:
The vowels does not include the letter "y". 
=end

module Main
# @param {String} s
# @return {String}
def reverse_vowels(s)
    if s.length == 0 || s.length == 1
        return s
    end

    vowels_2_index = []

    s.split("").each_with_index do |char, index|
        if ["a", "e", "i", "o", "u"].include?(char.downcase)
            vowels_2_index << index 
        end
    end

    if vowels_2_index.length == 0 || vowels_2_index.length == 1
        return s
    end

    i = 0
    j = vowels_2_index.length - 1

    while(i < j)
        tmp = s[vowels_2_index[i]]
        s[vowels_2_index[i]] = s[vowels_2_index[j]]
        s[vowels_2_index[j]] = tmp
        i += 1
        j -= 1
    end
    return s
end  
end
