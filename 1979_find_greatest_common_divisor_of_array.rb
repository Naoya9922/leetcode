# https://leetcode.com/problems/find-greatest-common-divisor-of-array/

# @param {Integer[]} nums
# @return {Integer}
def find_gcd(nums)
  max = nums.max
  min = nums.min
  max.gcd(min)
end