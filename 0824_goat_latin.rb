# https://leetcode.com/problems/goat-latin/

# @param {String} sentence
# @return {String}
def to_goat_latin(sentence)
  vowel = ['a', 'e', 'i', 'o', 'u']
  ary = sentence.split(' ')
  ary.map.with_index do |word, idx|
    if vowel.include?(word[0].downcase)
      word += "ma"
    else
      word = (word[1..] + word[0] + 'ma')
    end
    word += ('a' * (idx+1))
  end.join(' ')
end