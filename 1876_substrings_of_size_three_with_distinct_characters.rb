# https://leetcode.com/problems/substrings-of-size-three-with-distinct-characters/

# @param {String} s
# @return {Integer}
def count_good_substrings(s)
  s.chars.each_cons(3).to_a.select{|ary| ary.uniq.count == ary.count}.count
end