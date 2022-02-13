# https://leetcode.com/problems/iterator-for-combination/

class CombinationIterator
  attr_accessor :chars, :len, :pos

=begin
  :type characters: String
  :type combination_length: Integer
=end
  def initialize(characters, combination_length)
    @len = combination_length
    @chars = characters.chars.combination(@len).to_a.map(&:join)
    @pos = -1
  end

=begin
  :rtype: String
=end
  def next()
    self.pos += 1
    result = self.chars[self.pos]
  end

=begin
  :rtype: Boolean
=end
  def has_next()
    !self.chars[self.pos+1].nil?
  end
end

# Your CombinationIterator object will be instantiated and called as such:
# obj = CombinationIterator.new(characters, combination_length)
# param_1 = obj.next()
# param_2 = obj.has_next()
