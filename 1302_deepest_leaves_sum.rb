# https://leetcode.com/problems/deepest-leaves-sum/

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
def deepest_leaves_sum(root)
  queue = [root]
  (0..).each do
    new_queue = []
    queue.each do |e|
      new_queue << e.left if e.left
      new_queue << e.right if e.right
    end
    return queue.map(&:val).sum if new_queue.empty?
    queue = new_queue
  end
end