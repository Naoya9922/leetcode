# https://leetcode.com/problems/find-elements-in-a-contaminated-binary-tree/

# Definition for a binary tree node.
# class TreeNode
#   attr_accessor :val, :left, :right
#   def initialize(val = 0, left = nil, right = nil)
#     @val = val
#     @left = left
#     @right = right
#   end
# end
class FindElements
  attr_reader :recovered_tree

=begin
  :type root: TreeNode
=end
  def initialize(root)
    @recovered_tree = recover(root)
  end

=begin
  :type target: Integer
  :rtype: Boolean
=end
  def find(target)
    @recovered_tree.include?(target)
  end

  private

  def recover(root)
    queue = [[root, 0]]
    result = []
    (0..).each do
      new_queue = []
      result += queue.map(&:last)
      queue.each do |e, val|
        new_queue << [e.left, val * 2 + 1] if e.left
        new_queue << [e.right, val * 2 + 2] if e.right
      end
      break if new_queue.empty?
      queue = new_queue
    end
    result
  end

end

# Your FindElements object will be instantiated and called as such:
# obj = FindElements.new(root)
# param_1 = obj.find(target)
