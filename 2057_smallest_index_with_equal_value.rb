# https://leetcode.com/problems/smallest-index-with-equal-value/

# @param {Integer[]} nums
# @return {Integer}
def smallest_equal(nums)
  nums.each_with_index{|n, idx| return idx if idx % 10 == n}
  -1
end