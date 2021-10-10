# https://leetcode.com/problems/maximum-number-of-words-you-can-type/

# @param {String} text
# @param {String} broken_letters
# @return {Integer}
def can_be_typed_words(text, broken_letters)
  text.split(' ').reject{|w| w.count(broken_letters) >= 1}.count
end