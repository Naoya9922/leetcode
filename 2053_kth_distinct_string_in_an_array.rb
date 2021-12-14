# https://leetcode.com/problems/kth-distinct-string-in-an-array/

# @param {String[]} arr
# @param {Integer} k
# @return {String}
def kth_distinct(arr, k)
  hash = arr.group_by(&:itself).transform_values(&:count)
  arr = arr.select{|str| hash[str] == 1}
  arr.length < k ? '' : arr.first(k).last
end