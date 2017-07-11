=begin
Implement strStr().

Returns the index of the first occurrence of needle in haystack, or -1 if needle is not part of haystack.
=end

module Main
  # @param {String} haystack
  # @param {String} needle
  # @return {Integer}
  def str_str(haystack, needle)
    if !(haystack.empty? ^ needle.empty?)
      return -1
    elsif(haystack.empty? && needle.empty?)
      return 0
    end

    haystack_len = haystack.length
    needle_len = needle.length

    for i in 0..haystack_len
      if (haystack_len[i] == needle_len[0])
        for j in 0..needle_len
          break unless haystack_len[i + j] == needle_len[j]
          return i if j == needle_len - 1
        end
      end
    end

    -1
  end
end
