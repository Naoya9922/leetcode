# https://leetcode.com/problems/construct-string-from-binary-tree/

class Traverse
  attr_reader :node

  def initialize(node)
    @node = node
  end

  def execute
    self.traverse(node)
  end

  private

  def traverse(node)
    result = ''
    return result unless node
    result += node.val.to_s
    result += "(#{traverse(node.left)})" if node.left || node.right
    result += "(#{traverse(node.right)})" if node.right
    result
  end
end

# Definition for a binary tree node.
# class TreeNode
#     attr_accessor :val, :left, :right
#     def initialize(val = 0, left = nil, right = nil)
#         @val = val
#         @left = left
#         @right = right
#     end
# end
# @param {TreeNode} root
# @return {String}
def tree2str(root)
  Traverse.new(root).execute
end
