# https://leetcode.com/problems/binary-tree-tilt/

class Traverse
  attr_reader :node, :result

  def initialize(node)
    @node = node
    @result = []
  end

  def execute
    return [] unless @node
    self.traverse(@node)
    @result
  end

  private

  def traverse(node)
    left = right = 0
    left = self.traverse(node.left) if node.left
    right = self.traverse(node.right) if node.right
    @result << (left - right).abs
    node.val + left + right
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
def find_tilt(root)
  Traverse.new(root).execute.sum
end
