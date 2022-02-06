# https://leetcode.com/problems/count-complete-tree-nodes/

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
def count_nodes(root)
  return 0 unless root
  queue = [root]
  sum = 0
  (0..).each do
    new_queue = []
    sum += queue.count
    queue.each do |e|
      new_queue << e.left if e.left
      new_queue << e.right if e.right
    end
    break if new_queue.empty?
    queue = new_queue
  end
  sum
end
