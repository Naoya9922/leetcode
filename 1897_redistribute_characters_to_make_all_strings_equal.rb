# https://leetcode.com/problems/redistribute-characters-to-make-all-strings-equal/

# @param {String[]} words
# @return {Boolean}
def make_equal(words)
  count = words.count
  all_words = words.join.chars
  all_words = all_words.group_by(&:itself).map{|k,v| [k,v.count]}.to_h
  all_words.all?{|k,v| v % count == 0}
end