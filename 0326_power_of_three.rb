# https://leetcode.com/problems/power-of-three/

# @param {Integer} n
# @return {Boolean}
def is_power_of_three(n)
  arr = n.to_s(3).chars.map(&:to_i)
  arr.sum == 1 && arr.first == 1
end