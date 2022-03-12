# https://leetcode.com/problems/happy-number/

# @param {Integer} n
# @return {Boolean}
def is_happy(n)
  cache = []
  (0..).each do
    cache << n
    ary = n.to_s.chars.to_a.map(&:to_i)
    n = ary.map{|i| i ** 2}.sum
    break if cache.include?(n)
  end
  n == 1
end
