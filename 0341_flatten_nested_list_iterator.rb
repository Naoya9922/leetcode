# https://leetcode.com/problems/flatten-nested-list-iterator/

# This is the interface that allows for creating nested lists.
# You should not implement it, or speculate about its implementation
#
#class NestedInteger
#  def is_integer()
#    """
#    Return true if this NestedInteger holds a single integer, rather than a nested list.
#    @return {Boolean}
#    """
#
#  def get_integer()
#    """
#    Return the single integer that this NestedInteger holds, if it holds a single integer
#    Return nil if this NestedInteger holds a nested list
#    @return {Integer}
#    """
#
#  def get_list()
#    """
#    Return the nested list that this NestedInteger holds, if it holds a nested list
#    Return nil if this NestedInteger holds a single integer
#    @return {NestedInteger[]}
#    """

class NestedIterator
  attr_accessor :ary, :position

  # @param {NestedInteger[]} nested_list
  def initialize(nested_list)
    @ary = self.flatten(nested_list)
    @position = -1
  end

  # @return {Boolean}
  def has_next
    !self.ary[self.position+1].nil?
  end

  # @return {Integer}
  def next
    self.position += 1
    self.ary[self.position]
  end

  private

  def flatten(e)
    result = []
    if e.class == Array
      result += e.map{|e| self.flatten(e)}.flatten
    elsif e.is_integer
      result += [e.get_integer]
    else
      result += self.flatten(e.get_list)
    end
    result
  end
end

# Your NestedIterator will be called like this:
# i, v = NestedIterator.new(nested_list), []
# while i.has_next()
#  v << i.next
# end
