=begin
Given an index k, return the kth row of the Pascal's triangle.

For example, given k = 3,
Return [1,3,3,1].

Note:
Could you optimize your algorithm to use only O(k) extra space?
=end

module Main
  # @param {Integer} row_index
  # @return {Integer[]}
  def get_row(row_index)
      if(row_index == 0)
        return [1]
      elsif row_index == 1
        return [1,1]
      end

      prev_row = [1, 1]

      for i in 2..row_index
        row = Array.new(i + 1, 1)
        for j in 1...i
          row[j] = prev_row[j - 1] + prev_row[j]
        end
        prev_row = row.clone
      end
      row
  end
end
