# https://leetcode.com/problems/binary-search-tree-iterator/

class Traverse
  attr_accessor :node, :result

  def initialize(node)
    @node = node
    @result = []
  end

  def execute
    return [] unless self.node
    self.traverse(node)
    self.result
  end

  private

  def traverse(node)
    self.traverse(node.left) if node.left
    self.result << node.val
    self.traverse(node.right) if node.right
  end
end

# Definition for a binary tree node.
# class TreeNode
#   attr_accessor :val, :left, :right
#   def initialize(val = 0, left = nil, right = nil)
#     @val = val
#     @left = left
#     @right = right
#   end
# end
class BSTIterator
  attr_accessor :nodes, :pos
=begin
  :type root: TreeNode
=end
  def initialize(root)
    @nodes = Traverse.new(root).execute
    @pos = -1
  end

=begin
  :rtype: Integer
=end
  def next()
    self.pos += 1
    self.nodes[self.pos]
  end

=begin
  :rtype: Boolean
=end
  def has_next()
    !self.nodes[self.pos+1].nil?
  end
end

# Your BSTIterator object will be instantiated and called as such:
# obj = BSTIterator.new(root)
# param_1 = obj.next()
# param_2 = obj.has_next()
