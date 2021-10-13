# https://leetcode.com/problems/rearrange-words-in-a-sentence/

# @param {String} text
# @return {String}
def arrange_words(text)
  ary = text.split(' ')
  ary = ary.map(&:downcase).map.with_index.to_a
  ary = ary.sort_by{|word, order| [word.length, order]}
  ary = ary.map(&:first)
  result = ary.join(' ')
  result[0] = result[0].upcase
  result
end