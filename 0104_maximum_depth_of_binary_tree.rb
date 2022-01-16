# https://leetcode.com/problems/maximum-depth-of-binary-tree/

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
def max_depth(root)
  return 0 unless root
  queue = [root]
  (1..).each do |i|
    new_queue = []
    queue.each do |e|
      new_queue << e.left if e.left
      new_queue << e.right if e.right
    end
    return i if new_queue.empty?
    queue = new_queue
  end
end