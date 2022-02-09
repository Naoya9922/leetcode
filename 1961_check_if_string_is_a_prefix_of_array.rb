# https://leetcode.com/problems/check-if-string-is-a-prefix-of-array/

# @param {String} s
# @param {String[]} words
# @return {Boolean}
def is_prefix_string(s, words)
  words.each do |word|
    return true if s == ''
    if s.start_with?(word)
      s = s.sub(word, '')
    else
      return false
    end
  end
  s == ''
end
