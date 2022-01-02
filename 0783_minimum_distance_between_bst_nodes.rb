# https://leetcode.com/problems/minimum-distance-between-bst-nodes/

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
def min_diff_in_bst(root)
  queue = [root]
  result = [root.val]
  (0..).each do
    new_queue = []
    queue.each do |e|
      if e.left
        new_queue << e.left
        result << e.left.val
      end
      if e.right
        new_queue << e.right
        result << e.right.val
      end
    end
    break if new_queue.empty?
    queue = new_queue
  end
  result = result.combination(2).map{|a,b| (a-b).abs}.min
end