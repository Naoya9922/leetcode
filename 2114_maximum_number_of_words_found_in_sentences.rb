# https://leetcode.com/problems/maximum-number-of-words-found-in-sentences/

# @param {String[]} sentences
# @return {Integer}
def most_words_found(sentences)
  sentences.map{|str| str.split(' ').count}.max
end