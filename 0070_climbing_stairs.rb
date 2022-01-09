# https://leetcode.com/problems/climbing-stairs/

# @param {Integer} n
# @return {Integer}
def climb_stairs(n)
  fibonacci(n+1)
end

def fibonacci(n)
  return if n < 0
  Hash.new {|h, k| h[k] = k < 2 ? k : h[k - 1] + h[k - 2]}[n]
end
