=begin
Given a pattern and a string str, find if str follows the same pattern.

Here follow means a full match, such that there is a bijection between a letter in pattern and a non-empty word in str.

Examples:

    pattern = "abba", str = "dog cat cat dog" should return true.
    pattern = "abba", str = "dog cat cat fish" should return false.
    pattern = "aaaa", str = "dog cat cat dog" should return false.
    pattern = "abba", str = "dog dog dog dog" should return false.

Notes:
You may assume pattern contains only lowercase letters, and str contains lowercase letters separated by a single space.
=end

module Main
  # @param {String} pattern
  # @param {String} str
  # @return {Boolean}
  def word_pattern(pattern, str)
    if pattern.empty? && str.empty?
      return true
    elsif pattern.empty? ^ str.empty?
      return false
    end

    patterns = pattern.split("")
    strs = str.split(" ")

    if patterns.length != strs.length
      return false
    end

    p2s_map = {}
    s2p_map = {}

    (0...(patterns.length)).each do |i|
      if p2s_map[patterns[i]] && p2s_map[patterns[i]] != strs[i]
        return false
      elsif s2p_map[strs[i]] && s2p_map[strs[i]] != patterns[i]
        return false
      end

      p2s_map[patterns[i]] = strs[i]
      s2p_map[strs[i]] = patterns[i]
    end

    return true
  end
end
