# https://leetcode.com/problems/prime-number-of-set-bits-in-binary-representation/

require 'prime'

# @param {Integer} left
# @param {Integer} right
# @return {Integer}
def count_prime_set_bits(left, right)
  (left..right).to_a.select do |n|
    Prime.prime?(n.to_s(2).chars.map(&:to_i).sum)
  end.count
end