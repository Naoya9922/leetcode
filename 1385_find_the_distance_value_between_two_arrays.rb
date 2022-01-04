# https://leetcode.com/problems/find-the-distance-value-between-two-arrays/

# @param {Integer[]} arr1
# @param {Integer[]} arr2
# @param {Integer} d
# @return {Integer}
def find_the_distance_value(arr1, arr2, d)
  arr1.select{|n1| arr2.none?{|n2| (n1-n2).abs <= d}}.count
end