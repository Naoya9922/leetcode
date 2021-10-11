# https://leetcode.com/problems/matrix-diagonal-sum/

# @param {Integer[][]} mat
# @return {Integer}
def diagonal_sum(mat)
  i = 0
  mat.inject(0) do |sum, ary|
    j = ary.length - 1 - i
    sum += ary[i]
    sum += ary[j] if i != j
    i += 1
    sum
  end
end