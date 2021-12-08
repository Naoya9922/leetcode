# https://leetcode.com/problems/determine-whether-matrix-can-be-obtained-by-rotation/

def rotate_right(mat)
  mat.reverse.transpose
end

# @param {Integer[][]} mat
# @param {Integer[][]} target
# @return {Boolean}
def find_rotation(mat, target)
  4.times do
    mat = rotate_right(mat)
    return true if mat == target
  end
  false
end