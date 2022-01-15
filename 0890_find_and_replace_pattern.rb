# https://leetcode.com/problems/find-and-replace-pattern/

module CompareString
  refine String do
    def convert_to_ary
      self.chars.map(&:ord).combination(2).to_a.map{|a, b| a == b }
    end
  end
end

using CompareString

# @param {String[]} words
# @param {String} pattern
# @return {String[]}
def find_and_replace_pattern(words, pattern)
  p_ary = pattern.convert_to_ary
  words.select do |word|
    word.convert_to_ary == p_ary
  end
end