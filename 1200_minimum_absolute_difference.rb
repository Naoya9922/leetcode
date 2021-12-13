# https://leetcode.com/problems/minimum-absolute-difference/

# @param {Integer[]} arr
# @return {Integer[][]}
def minimum_abs_difference(arr)
  arr = arr.sort
  min = arr.each_with_index.inject(Float::INFINITY) do |acc, (n, idx)|
    next Float::INFINITY if idx == 0
    diff = n - arr[idx - 1]
    acc.nil? || diff < acc ? diff : acc
  end
  result = []
  arr.each.with_index do |n, idx|
    next if idx == 0
    diff = n - arr[idx - 1]
    result << [arr[idx - 1], n] if diff == min
  end
  result
end