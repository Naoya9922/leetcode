# https://leetcode.com/problems/lucky-numbers-in-a-matrix/submissions/

# @param {Integer[][]} matrix
# @return {Integer[]}
def lucky_numbers (matrix)
    mins = matrix.map(&:min)
    maxs = matrix.transpose.map(&:max)
    mins & maxs
end