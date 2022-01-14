# https://leetcode.com/problems/duplicate-zeros/

# @param {Integer[]} arr
# @return {Void} Do not return anything, modify arr in-place instead.
def duplicate_zeros(arr)
  i = 0
  length = arr.length
  (0..).each do
    if arr[i] == 0
      arr.insert(i, 0)
      i += 1
    end
    i += 1
    break if i >= length
  end
  arr.slice!(length..)
end