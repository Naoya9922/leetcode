# https://leetcode.com/problems/add-to-array-form-of-integer/

# @param {Integer[]} num
# @param {Integer} k
# @return {Integer[]}
def add_to_array_form(num, k)
  (num.join.to_i + k).to_s.chars.map(&:to_i)
end