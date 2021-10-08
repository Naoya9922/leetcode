# https://leetcode.com/problems/power-of-four/submissions/

# @param {Integer} n
# @return {Boolean}
def is_power_of_four(n)
    arr = n.to_s(4).chars.map(&:to_i)
    arr.first == 1 && arr.sum == 1
end