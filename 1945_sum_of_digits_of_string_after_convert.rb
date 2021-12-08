# https://leetcode.com/problems/sum-of-digits-of-string-after-convert/

# @param {String} s
# @param {Integer} k
# @return {Integer}
def get_lucky(s, k)
  hash = ('a'..'z').each_with_index.to_h
  num = s.chars.map{|c| hash[c] + 1}
  k.times do
    num = num.to_s.chars.map(&:to_i).sum
  end
  num
end