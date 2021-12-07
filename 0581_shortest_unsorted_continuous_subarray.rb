# https://leetcode.com/problems/shortest-unsorted-continuous-subarray/

# @param {Integer[]} nums
# @return {Integer}
def find_unsorted_subarray(nums)
  sorted = nums.sort.each_with_index.to_a
  nums = nums.each_with_index.to_a
  return 0 if sorted == nums
  zip = sorted.zip(nums).select{|ary1, ary2| ary1[0] != ary2[0]}
  (zip.last.first.last - zip.first.first.last) + 1
end