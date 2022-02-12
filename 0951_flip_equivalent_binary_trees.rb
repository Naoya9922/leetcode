# https://leetcode.com/problems/flip-equivalent-binary-trees/

class Traverse
  attr_accessor :node, :result

  def initialize(node)
    @node = node
    @result = []
  end

  def execute
    return [] unless node
    self.traverse(node, [])
    self.result
  end

  private

  def traverse(node, path)
    path += [node.val]
    self.traverse(node.left, path) if node.left
    self.traverse(node.right, path) if node.right
    self.result << path if !node.left && !node.right
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
# @param {TreeNode} root1
# @param {TreeNode} root2
# @return {Boolean}
def flip_equiv(root1, root2)
  result1 = Traverse.new(root1).execute
  result2 = Traverse.new(root2).execute
  result1.sort == result2.sort
end
