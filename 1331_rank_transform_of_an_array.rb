# https://leetcode.com/problems/rank-transform-of-an-array/

# @param {Integer[]} arr
# @return {Integer[]}
def array_rank_transform(arr)
  uniq_hash = arr.uniq.sort.each_with_index.to_h
  arr.map{|n| uniq_hash[n] + 1}
end