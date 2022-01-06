# https://leetcode.com/problems/three-divisors/

require 'prime'

# @param {Integer} n
# @return {Boolean}
def is_three(n)
  result = n.prime_division.inject([1, n]) do |acc, (num, e)|
    (1..e).each {|i| acc << num ** i}
    acc
  end
  result.uniq.count == 3
end