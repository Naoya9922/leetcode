# https://leetcode.com/problems/search-in-rotated-sorted-array-ii/

# @param {Integer[]} nums
# @param {Integer} target
# @return {Boolean}
def search(nums, target)
  !!nums.index(target)
end