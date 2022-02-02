# https://leetcode.com/problems/all-elements-in-two-binary-search-trees/

def to_array(node)
  return [] unless node
  queue = [node]
  result = []
  (0..).each do
    new_queue = []
    result += queue.map(&:val)
    queue.each do |e|
      new_queue << e.left if e.left
      new_queue << e.right if e.right
    end
    break if new_queue.empty?
    queue = new_queue
  end
  return result
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
# @return {Integer[]}
def get_all_elements(root1, root2)
  (to_array(root1) + to_array(root2)).sort
end
