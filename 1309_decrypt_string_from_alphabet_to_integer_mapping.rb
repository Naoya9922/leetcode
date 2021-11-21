# https://leetcode.com/problems/decrypt-string-from-alphabet-to-integer-mapping/

# @param {String} s
# @return {String}
def freq_alphabets(s)
  ary = s.scan(/(\d{2}#|\d)/).flatten
  hash = ('a'..'z').map.with_index{|c,idx| [idx+1 >= 10 ? "#{idx+1}#" : (idx+1).to_s, c]}.to_h
  ary.map{|str| hash[str]}.join
end