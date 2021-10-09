# https://leetcode.com/problems/baseball-game/

# @param {String[]} ops
# @return {Integer}
def cal_points(ops)
  score = []
  ops.each_with_index do |op, idx|
    if op.to_i.to_s == op
      score.push(op.to_i)
    end
    if op == "+"
      score.push(score[-2..-1].sum)
    end
    if op == "D"
      score.push(score[-1] * 2)
    end
    if op == "C"
      score.pop
    end
  end
  score.sum
end