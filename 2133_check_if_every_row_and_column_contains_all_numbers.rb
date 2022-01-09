# https://leetcode.com/problems/check-if-every-row-and-column-contains-all-numbers/

def valid?(matrix)
  matrix.all?{|row| row.uniq.length == matrix.length}
end

# @param {Integer[][]} matrix
# @return {Boolean}
def check_valid(matrix)
  valid?(matrix) && valid?(matrix.transpose)
end