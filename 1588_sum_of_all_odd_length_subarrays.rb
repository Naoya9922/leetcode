# https://leetcode.com/problems/sum-of-all-odd-length-subarrays/

# @param {Integer[]} arr
# @return {Integer}
def sum_odd_length_subarrays(arr)
  max = arr.length
  result = 0
  1.step(max, 2) do |i|
    result += arr.each_cons(i).to_a.flatten.sum
  end
  result
end