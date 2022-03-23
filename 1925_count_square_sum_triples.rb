# https://leetcode.com/problems/count-square-sum-triples/

# @param {Integer} n
# @return {Integer}
def count_triples(n)
  count = 0
  (1..n).each do |i|
    (i+1..n).each do |j|
      sum = (i ** 2) + (j ** 2)
      break if sum > n ** 2
      sqrt = Math.sqrt(sum)
      count += 2 if sqrt.to_i == sqrt
    end
  end
  count
end
