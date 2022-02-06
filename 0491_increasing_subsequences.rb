# https://leetcode.com/problems/increasing-subsequences/

def increasing?(ary)
  return false if ary.length <= 1
  ary.each_with_index do |n, i|
    next if i == 0
    return false if ary[i-1] > n
  end
  true
end

# @param {Integer[]} nums
# @return {Integer[][]}
def find_subsequences(nums)
  result = []
  (2..nums.length).each do |n|
    combination = nums.combination(n).to_a
    result += combination.select{|ary|increasing?(ary)}
  end
  result.uniq
end
