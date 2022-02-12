# https://leetcode.com/problems/find-mode-in-binary-search-tree/

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
# @return {Integer[]}
def find_mode(root)
  return [] unless root
  queue = [root]
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
  hash = result.group_by(&:itself).transform_values(&:count)
  max = hash.values.max
  hash.select{|_,v| v == max}.keys
end
