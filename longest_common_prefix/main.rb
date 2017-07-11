module Main
  # @param {String[]} strs
  # @return {String}
  def longest_common_prefix(strs)
      strs_count = strs.length

      if strs_count == 0
        return ""
      elsif strs_count == 1
        return strs[0]
      end

      if strs.any? { |str| str == "" }
        return ""
      end

      shortest_str_len = strs.min_by { |str| str.length }.length - 1


      common_prefix = ""

      for i in 0..shortest_str_len
        char = strs.map { |str| str[i] }.uniq

        if char.length == 1
          common_prefix += char[0]
        else
          return common_prefix
        end
      end
      common_prefix
  end
end
