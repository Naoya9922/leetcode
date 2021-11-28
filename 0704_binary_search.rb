# https://leetcode.com/problems/binary-search/

# @param {Integer[]} nums
# @param {Integer} target
# @return {Integer}
def search(nums, target)
  nums.index(target) || -1
end