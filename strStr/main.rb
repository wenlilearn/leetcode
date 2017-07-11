=begin
Implement strStr().

Returns the index of the first occurrence of needle in haystack, or -1 if needle is not part of haystack.
=end

module Main
  # @param {String} haystack
  # @param {String} needle
  # @return {Integer}
  def str_str(haystack, needle)
    if haystack.empty? && !(needle.empty?)
      return -1
    elsif !(haystack.empty?) && needle.empty?
      return 0
    elsif haystack.empty? && needle.empty?
      return 0
    end

    haystack_len = haystack.length
    needle_len = needle.length

    return -1 if needle_len > haystack_len

    for i in 0...haystack_len
      if(haystack[i] == needle[0]) && i + needle_len <= haystack_len
        return i if haystack[i...(i+needle_len)] == needle
      end
    end

    -1
  end
end
