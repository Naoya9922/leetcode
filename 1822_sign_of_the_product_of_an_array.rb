# https://leetcode.com/problems/sign-of-the-product-of-an-array/

# @param {Integer[]} nums
# @return {Integer}
def array_sign(nums)
  return 0 if nums.index(0)
  nc = nums.select(&:negative?).count
  nc.even? ? 1 : -1
end