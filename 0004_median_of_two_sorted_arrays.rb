# https://leetcode.com/problems/median-of-two-sorted-arrays/

# @param {Integer[]} nums1
# @param {Integer[]} nums2
# @return {Float}
def find_median_sorted_arrays(nums1, nums2)
  ary = (nums1 + nums2).sort
  center = ary.length / 2
  ary.length.even? ? (ary[center] + ary[center-1]).fdiv(2) : ary[center]
end