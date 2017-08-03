=begin
Given a non-empty string check if it can be constructed by taking a substring of it and appending multiple copies of the substring together. You may assume the given string consists of lowercase English letters only and its length will not exceed 10000.

Example 1:

Input: "abab"

Output: True

Explanation: It's the substring "ab" twice.

Example 2:

Input: "aba"

Output: False

Example 3:

Input: "abcabcabcabc"

Output: True

Explanation: It's the substring "abc" four times. (And the substring "abcabc" twice.)

=end

module Main
# @param {String} s
# @return {Boolean}
def repeated_substring_pattern(s)
    if s.length == 1 || s.length == 0
      return false
    end

    s_len = s.length
    if s_len >= 5000
      range = (s.length - 1).downto(1)
    else
      range = 1...s.length
    end

    for i in range
      next if s_len % i != 0

      if s.chars.each_slice(i).map(&:join).uniq.length == 1
        return true
      end
    end
    return false
end
end
