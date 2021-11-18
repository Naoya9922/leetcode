# https://leetcode.com/problems/add-digits/

# @param {Integer} num
# @return {Integer}
def add_digits(num)
  return num if num.to_s.length == 1
  result = num.to_s.split('').reduce(0){|a, n| a += n.to_i}
  add_digits(result)
end