# https://leetcode.com/problems/kth-missing-positive-number/

# @param {Integer[]} arr
# @param {Integer} k
# @return {Integer}
def find_kth_positive(arr, k)
  idx = 0
  (1..).each do |n|
    next if arr.include?(n)
    idx += 1
    break n if idx == k
  end
end