# https://leetcode.com/problems/count-primes/

require 'prime'

# @param {Integer} n
# @return {Integer}
def count_primes(n)
  Prime.take_while{|p| p < n}.count
end