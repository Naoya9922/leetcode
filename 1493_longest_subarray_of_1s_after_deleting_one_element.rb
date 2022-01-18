# https://leetcode.com/problems/longest-subarray-of-1s-after-deleting-one-element/

# @param {Integer[]} nums
# @return {Integer}
def longest_subarray(nums)
  str = nums.join
  nums = str.split('0')
  contain_zero = str.index('0')
  max = 0
  nums << "" if nums.length < 2
  nums.each_cons(2) do |ary|
    max = [ary.join.length, max].max
  end
  contain_zero ? max : max - 1
end