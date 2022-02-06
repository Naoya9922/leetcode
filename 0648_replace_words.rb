# https://leetcode.com/problems/replace-words/

# @param {String[]} dictionary
# @param {String} sentence
# @return {String}
def replace_words(dictionary, sentence)
  ary = sentence.split(' ')
  ary.map do |w|
    candidate = dictionary.select{|d| w.start_with?(d)}.min_by(&:length)
    candidate || w
  end.join(' ')
end
