# https://leetcode.com/problems/convert-integer-to-the-sum-of-two-no-zero-integers/

# @param {Integer} n
# @return {Integer[]}
def get_no_zero_integers(n)
  (1..n-1).each do |i|
    next if i.to_s.chars.include?("0") || (n - i).to_s.chars.include?("0")
    return [i, n-i]
  end
end