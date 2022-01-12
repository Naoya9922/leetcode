# https://leetcode.com/problems/a-number-after-a-double-reversal/

# @param {Integer} num
# @return {Boolean}
def is_same_after_reversals(num)
  num.to_s.reverse.to_i.to_s.reverse.to_i == num
end