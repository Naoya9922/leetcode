# https://leetcode.com/problems/top-k-frequent-elements/

# @param {Integer[]} nums
# @param {Integer} k
# @return {Integer[]}
def top_k_frequent(nums, k)
  hash = nums.group_by(&:itself).map{|k,v| [k,v.count]}.to_h
  hash.sort_by{|k,v| v}.reverse.first(k).map(&:first)
end