# https://leetcode.com/problems/implement-trie-prefix-tree/

class Trie
  attr_accessor :set

  def initialize()
    @set = Set.new
  end

=begin
  :type word: String
  :rtype: Void
=end
  def insert(word)
    self.set.add(word)
  end

=begin
  :type word: String
  :rtype: Boolean
=end
  def search(word)
    self.set.any?{|w| w == word}
  end

=begin
  :type prefix: String
  :rtype: Boolean
=end
  def starts_with(prefix)
    self.set.any?{|w| w.start_with?(prefix)}
  end
end

# Your Trie object will be instantiated and called as such:
# obj = Trie.new()
# obj.insert(word)
# param_2 = obj.search(word)
# param_3 = obj.starts_with(prefix)
