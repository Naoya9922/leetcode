# https://leetcode.com/problems/ugly-number/

require 'prime'

# @param {Integer} n
# @return {Boolean}
def is_ugly(n)
  factors = n.prime_division
  return true if factors.empty?
  factors.to_h.keys.all?{|n| [2,3,5].include?(n)}
rescue ZeroDivisionError
  false
end