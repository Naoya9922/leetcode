# https://leetcode.com/problems/sum-of-nodes-with-even-valued-grandparent/

class Traverse
  attr_accessor :node, :sum

  def initialize(node)
    @node = node
    @sum = 0
  end

  def execute
    self.traverse(node, [])
    self.sum
  end

  private

  def traverse(node, path)
    return unless node
    self.sum += node.val if path[-2]&.even?
    path += [node.val]
    self.traverse(node.left, path) if node.left
    self.traverse(node.right, path) if node.right
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
# @param {TreeNode} root
# @return {Integer}
def sum_even_grandparent(root)
  Traverse.new(root).execute
end
