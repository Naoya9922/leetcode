# https://leetcode.com/problems/remove-outermost-parentheses/

# @param {String} s
# @return {String}
def remove_outer_parentheses(s)
  ary = s.chars
  stack = []
  result = ''
  ary.each do |c|
    if c == '('
      result += c unless stack.empty?
      stack.push(c)
    end
    if c == ')'
      stack.pop
      result += c unless stack.empty?
    end
  end
  result
end
