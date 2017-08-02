=begin
Given n points in the plane that are all pairwise distinct, a "boomerang" is a tuple of points (i, j, k) such that the distance between i and j equals the distance between i and k (the order of the tuple matters).

Find the number of boomerangs. You may assume that n will be at most 500 and coordinates of points are all in the range [-10000, 10000] (inclusive).

Example:
Input:
[[0,0],[1,0],[2,0]]

Output:
2

Explanation:
The two boomerangs are [[1,0],[0,0],[2,0]] and [[1,0],[2,0],[0,0]]
=end

module Main
# @param {Integer[][]} points
# @return {Integer}
def number_of_boomerangs(points)
  res = 0
  dist_map = {}

  for i in 0...points.length
    for j in 0...points.length
      if i == j
        next
      end

      d = dist(points[i], points[j])
      dist_map[d] ||= 0
      dist_map[d] += 1
    end

    dist_map.each do |_k, v|
      res += v * (v - 1)
    end

    dist_map.clear
  end
  return res
end

def dist(point1, point2)
  (point1[0] - point2[0]) ** 2 + (point1[1] - point2[1]) ** 2
end
end
