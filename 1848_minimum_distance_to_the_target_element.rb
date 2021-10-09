# https://leetcode.com/problems/minimum-distance-to-the-target-element/

# @param {Integer[]} nums
# @param {Integer} target
# @param {Integer} start
# @return {Integer}
def get_min_distance(nums, target, start)
  r = nums.map.with_index.to_a.select{|n, _| n == target}.min_by{|_, idx| (idx - start).abs}.last
  (r - start).abs
end