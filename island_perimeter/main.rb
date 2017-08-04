=begin
You are given a map in form of a two-dimensional integer grid where 1 represents land and 0 represents water. Grid cells are connected horizontally/vertically (not diagonally). The grid is completely surrounded by water, and there is exactly one island (i.e., one or more connected land cells). The island doesn't have "lakes" (water inside that isn't connected to the water around the island). One cell is a square with side length 1. The grid is rectangular, width and height don't exceed 100. Determine the perimeter of the island.

Example:

[[0,1,0,0],
 [1,1,1,0],
 [0,1,0,0],
 [1,1,0,0]]

Answer: 16
=end

module Main
# @param {Integer[][]} grid
# @return {Integer}
def island_perimeter(grid)
  if grid.length == 0 || grid[0].length == 0
    return false
  end

  edges = 0

  for i in 0...grid.length
    for j in 0...grid[0].length
      if grid[i][j] == 1
        edges += 4
        if i > 0 && grid[i - 1][j] == 1
          edges -= 2
        end
        if j > 0 && grid[i][j - 1] == 1
          edges -= 2
        end
      end
    end
  end
  return edges
end
end
