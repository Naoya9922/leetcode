# https://leetcode.com/problems/robot-return-to-origin/

# @param {String} moves
# @return {Boolean}
def judge_circle(moves)
  horizontal = moves.scan(/[L|R]/).map{|d| d == "L" ? -1 : 1}
  vertical = moves.scan(/[U|D]/).map{|d| d == "D" ? -1 : 1}
  horizontal.sum == 0 && vertical.sum == 0
end