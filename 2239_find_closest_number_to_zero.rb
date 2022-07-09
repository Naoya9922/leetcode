# https://leetcode.com/problems/find-closest-number-to-zero/

# @param {Integer[]} nums
# @return {Integer}
def find_closest_number(nums)
  nums.min_by{|n| [n.abs, -n]}
end
