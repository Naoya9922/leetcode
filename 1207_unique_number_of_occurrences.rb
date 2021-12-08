# https://leetcode.com/problems/unique-number-of-occurrences/

# @param {Integer[]} arr
# @return {Boolean}
def unique_occurrences(arr)
  hash = arr.group_by(&:itself).transform_values(&:count)
  hash.count == hash.invert.count
end