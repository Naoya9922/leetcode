# https://leetcode.com/problems/peeking-iterator/

# Below is the interface for Iterator, which is already defined for you.
#
# class Iterator
# 	def initialize(v)
#
#   end
#
#   def hasNext()
#		Returns true if the iteration has more elements.
#   end
#
#   def next()
#   	Returns the next element in the iteration.
#   end
# end

class PeekingIterator
  attr_accessor :ary, :pos
  # @param {Iterator} iter
  def initialize(iter)
    @ary = []
    while(iter.hasNext)
      @ary << iter.next
    end
    @pos = -1
  end

  # Returns true if the iteration has more elements.
  # @return {boolean}
  def hasNext()
    !!self.ary[self.pos + 1]
  end

  # Returns the next element in the iteration.
  # @return {integer}
  def next()
    self.pos += 1
    self.ary[self.pos]
  end

  # Returns the next element in the iteration without advancing the iterator.
  # @return {integer}
  def peek()
    self.ary[self.pos + 1]
  end
end
