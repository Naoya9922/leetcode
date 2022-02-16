# https://leetcode.com/problems/string-to-integer-atoi/

# @param {String} s
# @return {Integer}
def my_atoi(s)
  max = 2 ** 31 - 1
  min = -2 ** 31
  r = s.to_i
  r = max if r > max
  r = min if r < min
  r
end
