# https://leetcode.com/problems/reverse-substrings-between-each-pair-of-parentheses/

# @param {String} s
# @return {String}
def reverse_parentheses(s)
  ary = s.scan(/(\w+|[\(\)])/).flatten
  stack = []
  ary.each do |e|
    if e == '('
      stack.push(e)
    elsif e == ')'
      idx = stack.rindex('(')
      last = stack[idx+1..].join.reverse
      stack[idx..] = last
    elsif
      stack.push(e)
    end
  end
  stack.join
end
