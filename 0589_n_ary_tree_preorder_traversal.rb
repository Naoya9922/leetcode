# https://leetcode.com/problems/n-ary-tree-preorder-traversal/

def traverse(root)
  result = []
  result << root
  root.children.each do |e|
    next unless e
    result += traverse(e)
  end
  result
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
def preorder(root)
  return [] unless root
  traverse(root).map(&:val)
end