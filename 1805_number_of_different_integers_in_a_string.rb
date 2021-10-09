# https://leetcode.com/problems/number-of-different-integers-in-a-string/

# @param {String} word
# @return {Integer}
def num_different_integers(word)
  word.split(/[a-z]+/).reject(&:empty?).map(&:to_i).uniq.count
end