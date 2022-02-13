# https://leetcode.com/problems/implement-magic-dictionary/

class MagicDictionary
  attr_accessor :words
  def initialize()
    @words = []
  end

=begin
  :type dictionary: String[]
  :rtype: Void
=end
  def build_dict(dictionary)
    self.words = dictionary
  end

=begin
  :type search_word: String
  :rtype: Boolean
=end
  def search(search_word)
    self.words.any?{|word| match?(word, search_word)}
  end

  private

  def match?(word, search_word)
    return false if word.length != search_word.length
    word.chars.zip(search_word.chars).select{|a, b| a!=b}.count == 1
  end
end

# Your MagicDictionary object will be instantiated and called as such:
# obj = MagicDictionary.new()
# obj.build_dict(dictionary)
# param_2 = obj.search(search_word)
