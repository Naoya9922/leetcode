# https://leetcode.com/problems/keyboard-row/submissions/

# @param {String[]} words
# @return {String[]}
def find_words(words)
  first = "qwertyuiop".chars
  second = "asdfghjkl".chars
  third = "zxcvbnm".chars

  words.select do |str|
    [first, second, third].any? do |keys|
      str.downcase.chars.all? {|c| keys.include?(c)}
    end
  end
end