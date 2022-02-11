# https://leetcode.com/problems/n-ary-tree-postorder-traversal/

class Traverse

  attr_accessor :node, :result

  def initialize(node)
    @node = node
    @result = []
  end

  def execute
    return [] unless node
    self.traverse(node)
    self.result
  end

  private

  def traverse(node)
    node.children.each do |e|
      traverse(e)
    end
    self.result << node.val
  end
end

# Definition for a Node.
# class Node
#     attr_accessor :val, :children
#     def initialize(val)
#         @val = val
#         @children = []
#     end
# end

# @param {Node} root
# @return {List[int]}
def postorder(root)
  Traverse.new(root).execute
end
