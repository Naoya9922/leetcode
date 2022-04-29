# https://leetcode.com/problems/maximum-width-of-binary-tree/

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
def width_of_binary_tree(root)
  queue = [[root, "0"]]
  result = []
  diff = 0
  (1..).each do |l|
    new_queue = []
    pos = queue.map(&:last)
    min, max = pos.map{|p| p.to_i(2)}.minmax
    diff = [diff, max - min + 1].max
    queue.each do |e, pos|
      new_queue << [e.left, pos + "0"] if e.left
      new_queue << [e.right, pos + "1"] if e.right
    end
    break if new_queue.empty?
    queue = new_queue
  end
  diff
end
