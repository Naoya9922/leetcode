# https://leetcode.com/problems/find-all-duplicates-in-an-array/

# @param {Integer[]} nums
# @return {Integer[]}
def find_duplicates(nums)
  hash = nums.group_by(&:itself).map{|k,v| [k, v.count]}.to_h
  hash.select{|_,v| v == 2}.keys
end