# https://leetcode.com/problems/next-greater-element-i/

# @param {Integer[]} nums1
# @param {Integer[]} nums2
# @return {Integer[]}
def next_greater_element(nums1, nums2)
  nums1.map do |n1|
    idx = nums2.index(n1)
    next n1 unless idx
    nums2[idx+1..].find{|n2| n2 > n1} || -1
  end
end