# https://leetcode.com/problems/power-of-two/

# @param {Integer} n
# @return {Boolean}
def is_power_of_two(n)
  return false if n <= 0
  2 ** Math.log(n, 2).to_i == n
end