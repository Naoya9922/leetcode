# https://leetcode.com/problems/maximum-nesting-depth-of-the-parentheses/

# @param {String} s
# @return {Integer}
def max_depth(s)
  stack = []
  depth = 0
  s.chars.each do |c|
    if c == '('
      stack.push('(')
      depth = [depth, stack.length].max
    elsif c == ')'
      stack.pop
    end
  end
  depth
end
