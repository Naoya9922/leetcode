# https://leetcode.com/problems/decompress-run-length-encoded-list/

# @param {Integer[]} nums
# @return {Integer[]}
def decompress_rl_elist(nums)
  result = []
  nums.each_slice(2) do |pair|
    result << [pair[1]] * pair[0]
  end
  result.flatten
end