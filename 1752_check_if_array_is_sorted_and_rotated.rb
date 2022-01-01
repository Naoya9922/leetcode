# https://leetcode.com/problems/check-if-array-is-sorted-and-rotated/

# @param {Integer[]} nums
# @return {Boolean}
def check(nums)
  sorted = nums.sort
  nums.count.times do
    last = nums.pop
    nums.unshift(last)
    return true if nums == sorted
  end
  false
end