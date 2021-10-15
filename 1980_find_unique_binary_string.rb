# https://leetcode.com/problems/find-unique-binary-string/

# @param {String[]} nums
# @return {String}
def find_different_binary_string(nums)
  len = nums.first.length
  digit = 2 ** len
  (0...digit).each do |n|
    bin = n.to_s(2).ljust(len, '0')
    return bin if !nums.include?(bin)
  end
end