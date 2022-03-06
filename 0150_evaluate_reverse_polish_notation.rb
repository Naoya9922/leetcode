#https://leetcode.com/problems/evaluate-reverse-polish-notation/

# @param {String[]} tokens
# @return {Integer}
def eval_rpn(tokens)
  ops = %w(+ - * /)
  stack = []
  tokens.each do |token|
    if ops.include?(token)
      token = 'fdiv' if token == '/'
      r = stack.last(2).inject do |acc, v|
        result = acc.send(token, v)
        result.negative? ? result.ceil : result.floor
      end
      stack[-2..] = r
    else
      stack.push(token.to_i)
    end
  end
  stack.first
end
