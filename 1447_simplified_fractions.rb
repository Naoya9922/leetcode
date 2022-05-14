# https://leetcode.com/problems/simplified-fractions/

# @param {Integer} n
# @return {String[]}
def simplified_fractions(n)
  return [] if n == 1
  result = Set.new
  (2..n).each do |d|
    (1...d).each do |f|
      result << Rational(f, d).to_s
    end
  end
  result.to_a
end
