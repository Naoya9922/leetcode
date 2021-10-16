# https://leetcode.com/problems/number-of-strings-that-appear-as-substrings-in-word/

# @param {String[]} patterns
# @param {String} word
# @return {Integer}
def num_of_strings(patterns, word)
  patterns.select{|p| word.match?(/#{p}/)}.count
end