# https://leetcode.com/problems/binary-number-with-alternating-bits/

# @param {Integer} n
# @return {Boolean}
def has_alternating_bits(n)
  b = n.to_s(2)
  ary = b.chars
  ary.each_with_index do |s, idx|
    next if idx == 0
    return false if ary[idx - 1] == s
  end
  true
end