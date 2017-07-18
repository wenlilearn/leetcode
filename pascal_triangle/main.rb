=begin
Given numRows, generate the first numRows of Pascal's triangle.

For example, given numRows = 5,
Return

[
     [1],
    [1,1],
   [1,2,1],
  [1,3,3,1],
 [1,4,6,4,1]
]
=end

module Main
  # @param {Integer} num_rows
  # @return {Integer[][]}
  def generate(num_rows)
      if num_rows == 0
        return []
      elsif num_rows == 1
        return [[1]]
      elsif num_rows == 2
        return [[1], [1, 1]]
      end

      rows = []
      for i in 0...num_rows
        rows[i] = Array.new(i + 1, 1)
      end

      for i in 2...num_rows
        for j in 1...i
          rows[i][j] = rows[i - 1][j - 1] + rows[i - 1][j]
        end
      end
      rows
  end
end
