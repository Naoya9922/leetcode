# https://leetcode.com/problems/smallest-string-starting-from-leaf/

class Traverse
  attr_accessor :node, :result

  def initialize(node)
    @node = node
    @result = []
  end

  def execute
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
# @param {TreeNode} root
# @return {String}
def smallest_from_leaf(root)
  result = Traverse.new(root).execute
  alphabet = ('a'..'z').each_with_index.to_h.invert
  result.map{|r| r.reverse.map{|n| alphabet[n]}.join}.min
end
