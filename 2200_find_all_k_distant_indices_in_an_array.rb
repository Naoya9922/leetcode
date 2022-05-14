# https://leetcode.com/problems/find-all-k-distant-indices-in-an-array/

# @param {Integer[]} nums
# @param {Integer} key
# @param {Integer} k
# @return {Integer[]}
def find_k_distant_indices(nums, key, k)
  nums_with_index = nums.each_with_index.to_a
  key_indices = key_indices = nums_with_index.select{|k,_| k == key}.map(&:last)
  return key_indices if key_indices.length == nums.length
  result = []
  key_indices.each do |i|
    result += (i - k..i + k).to_a
  end
  result.select{|n| n >= 0 && n < nums.length}.uniq.sort
end
