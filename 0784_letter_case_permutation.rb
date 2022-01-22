# https://leetcode.com/problems/letter-case-permutation/

# @param {String} s
# @return {String[]}
def letter_case_permutation(s)
  ary = s.chars.map{|c| [c.downcase, c.upcase].uniq}.inject{|acc, ary| acc.product(ary)}
  ary.map{|s| s.respond_to?(:join) ? s.join : s}
end