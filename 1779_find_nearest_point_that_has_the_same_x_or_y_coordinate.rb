# https://leetcode.com/problems/find-nearest-point-that-has-the-same-x-or-y-coordinate/

# @param {Integer} x
# @param {Integer} y
# @param {Integer[][]} points
# @return {Integer}
def nearest_valid_point(x, y, points)
  min = points.select{|a,b| a == x || b == y}.min_by{|a,b| (x-a).abs + (y-b).abs}
  min ? points.index(min) : -1
end