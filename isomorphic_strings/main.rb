=begin
Given two strings s and t, determine if they are isomorphic.

Two strings are isomorphic if the characters in s can be replaced to get t.

All occurrences of a character must be replaced with another character while preserving the order of characters. No two characters may map to the same character but a character may map to itself.

For example,
Given "egg", "add", return true.

Given "foo", "bar", return false.

Given "paper", "title", return true.

Note:
You may assume both s and t have the same length.
=end

module Main
# @param {String} s
# @param {String} t
# @return {Boolean}
  def is_isomorphic(s, t)
    if s.empty? && t.empty?
      return true
    end

    length = s.length
    s2t = {}
    t2s = {}

    for i in 0...length
      unless s2t[s[i]]
        s2t[s[i]] = t[i]
      else
        return false if s2t[s[i]] != t[i]
      end

      unless t2s[t[i]]
        t2s[t[i]] = s[i]
      else
        return false if t2s[t[i]] != s[i]
      end
    end

    return true
  end
end
