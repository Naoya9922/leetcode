# https://leetcode.com/problems/thousand-separator/

# @param {Integer} n
# @return {String}
def thousand_separator(n)
  n.to_s.chars.reverse.join.split(/(\d{3})/).reject(&:empty?).join('.').reverse
end