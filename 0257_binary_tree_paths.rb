# https://leetcode.com/problems/binary-tree-paths/

class Traverse
  attr_accessor :node, :result

  def initialize(node)
    @node = node
    @result = []
  end

  def execute
    self.traverse(node, "")
    self.result
  end

  private

  def traverse(e, str)
    str += "->" if str != ""
    str += e.val.to_s
    traverse(e.left, str) if e.left
    traverse(e.right, str) if e.right
    if (!e.left && !e.right)
      self.result << str
    end
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
# @return {String[]}
def binary_tree_paths(root)
  Traverse.new(root).execute
end
