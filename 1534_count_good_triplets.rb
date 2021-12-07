# https://leetcode.com/problems/count-good-triplets/

# @param {Integer[]} arr
# @param {Integer} a
# @param {Integer} b
# @param {Integer} c
# @return {Integer}
def count_good_triplets(arr, a, b, c)
  arr.combination(3).select do |i, j, k|
    (i - j).abs <= a && (j - k).abs <= b && (i - k).abs <= c
  end.count
end