# https://leetcode.com/problems/find-resultant-array-after-removing-anagrams/

# @param {String[]} words
# @return {String[]}
def remove_anagrams(words)
  result = []
  words.each_with_index do |word, i|
    result << word if i == 0 || word.chars.sort != words[i-1].chars.sort
  end
  result
end
