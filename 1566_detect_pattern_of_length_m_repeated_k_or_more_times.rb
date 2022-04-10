# https://leetcode.com/problems/detect-pattern-of-length-m-repeated-k-or-more-times/

# @param {Integer[]} arr
# @param {Integer} m
# @param {Integer} k
# @return {Boolean}
def contains_pattern(arr, m, k)
  arr.each_with_index do |e, i|
    sub_arr = arr[i..].each_slice(m).first(k)
    return true if sub_arr.length == k && sub_arr.uniq.length == 1
  end
  false
end
