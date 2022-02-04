# https://leetcode.com/problems/keep-multiplying-found-values-by-two/

# @param {Integer[]} nums
# @param {Integer} original
# @return {Integer}
def find_final_value(nums, original)
  target = original
  (0..).each do
    return target unless nums.index(target)
    target *= 2
  end
end
