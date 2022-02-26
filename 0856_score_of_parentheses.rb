# https://leetcode.com/problems/score-of-parentheses/

# @param {String} s
# @return {Integer}
def score_of_parentheses(s)
  stack = []
  s.chars.each do |c|
    if c == '('
      stack.push('(')
    end
    if c == ')'
      idx = stack.rindex('(')
      inner = stack[idx+1..]
      score = (inner.sum.zero? ? 1 : inner.sum * 2)
      stack[idx..] = score
    end
  end
  stack.sum
end
