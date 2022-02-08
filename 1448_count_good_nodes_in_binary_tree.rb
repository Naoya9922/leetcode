# https://leetcode.com/problems/count-good-nodes-in-binary-tree/

class Traverse
  attr_accessor :node, :count

  def initialize(node)
    @node = node
    @count = 0
  end

  def execute
    self.traverse(node, [])
    self.count
  end

  private

  def traverse(e, path)
    path += [e.val]
    self.count += 1 if path.all?{|n| n <= e.val}
    traverse(e.left, path) if e.left
    traverse(e.right, path) if e.right
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
# @return {Integer}
def good_nodes(root)
  Traverse.new(root).execute
end
