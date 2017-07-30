=begin
Given a string, find the first non-repeating character in it and return it's index. If it doesn't exist, return -1.

Examples:

s = "leetcode"
return 0.

s = "loveleetcode",
return 2.
=end

module Main
# @param {String} s
# @return {Integer}
def first_uniq_char(s)
    char_map = {}

    s.split("").each_with_index do |char, index|
      char_map[char] ||= []
      char_map[char] << index
    end

    min = 1.0 / 0
    char_map.each do |k, v|
      if v.length > 1
        next
      end

      min = [v[0], min].min
    end

    return -1 if min == 1.0 / 0
    return min
end
end
