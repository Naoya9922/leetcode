# https://leetcode.com/problems/peak-index-in-a-mountain-array/

# @param {Integer[]} arr
# @return {Integer}
def peak_index_in_mountain_array(arr)
  arr.index(arr.max)
end