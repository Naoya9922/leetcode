# https://leetcode.com/problems/merge-strings-alternately/

# @param {String} word1
# @param {String} word2
# @return {String}
def merge_alternately(word1, word2)
  len1 = word1.length
  len2 = word2.length
  if len1 > len2
    word2 = word2.ljust(len1, " ")
  else
    word1 = word1.ljust(len2, " ")
  end
  word1.chars.zip(word2.chars).flatten.join.gsub(' ', '')
end