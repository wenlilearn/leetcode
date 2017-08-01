=begin
Given a string which consists of lowercase or uppercase letters, find the length of the longest palindromes that can be built with those letters.

This is case sensitive, for example "Aa" is not considered a palindrome here.

Note:
Assume the length of given string will not exceed 1,010.

Example:

Input:
"abccccdd"

Output:
7

Explanation:
One longest palindrome that can be built is "dccaccd", whose length is 7.

=end

module Main
# @param {String} s
# @return {Integer}
def longest_palindrome(s)
  freq = {} 
  s.split("").each do |c|
    freq[c] ||= 0
    freq[c] += 1
  end

  longest = 0
  one_added = false

  freq.each do |k, v|
    if v % 2 == 0
      longest += v
    elsif v % 2 != 0
      if v > 1
        longest += v
        longest -= 1 if one_added
        one_added = true
      else
        longest += 1 unless one_added
        one_added = true
      end
    end
  end
  return longest
end  
end
