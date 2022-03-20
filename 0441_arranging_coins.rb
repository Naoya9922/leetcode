# https://leetcode.com/problems/arranging-coins/

# @param {Integer} n
# @return {Integer}
def arrange_coins(n)
  (Math.sqrt(n).to_i..).each do |i|
    return i - 1 if (i * (i + 1) / 2) > n
  end
end
