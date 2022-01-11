# https://leetcode.com/problems/uncommon-words-from-two-sentences/

# @param {String} s1
# @param {String} s2
# @return {String[]}
def uncommon_from_sentences(s1, s2)
  ary1 = s1.split(' ')
  ary2 = s2.split(' ')
  (ary1 + ary2).group_by(&:itself).transform_values(&:count).select{|_, v| v == 1}.keys
end