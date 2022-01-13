# https://leetcode.com/problems/reverse-prefix-of-word/

# @param {String} word
# @param {Character} ch
# @return {String}
def reverse_prefix(word, ch)
  ary = word.chars
  index = ary.index(ch)
  return word unless index
  (ary[..index].reverse + ary[index+1..]).join
end