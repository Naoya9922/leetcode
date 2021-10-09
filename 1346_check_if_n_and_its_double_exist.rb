# https://leetcode.com/problems/check-if-n-and-its-double-exist/

# @param {Integer[]} arr
# @return {Boolean}
def check_if_exist(arr)
  arr.each_with_index.any? do |n, idx|
    temp = arr.dup
    temp.delete_at(idx)
    temp.any?{|n2| n == n2 * 2}
  end
end