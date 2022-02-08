# https://leetcode.com/problems/mean-of-array-after-removing-some-elements/

# @param {Integer[]} arr
# @return {Float}
def trim_mean(arr)
  idx = (arr.count * 0.05).floor
  r = (idx..arr.length-1-idx)
  arr = arr.sort
  sum = arr[r].sum
  sum.fdiv(r.count)
end
