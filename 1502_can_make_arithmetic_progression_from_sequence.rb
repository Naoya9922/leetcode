# https://leetcode.com/problems/can-make-arithmetic-progression-from-sequence/submissions/

# @param {Integer[]} arr
# @return {Boolean}
def can_make_arithmetic_progression(arr)
  arr = arr.sort
  arr = arr.map.with_index do |n, idx|
    next if idx == 0
    n - arr[idx - 1]
  end
  arr.compact.uniq.count == 1
end