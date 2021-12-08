# https://leetcode.com/problems/minimum-add-to-make-parentheses-valid/

# @param {String} s
# @return {Integer}
def min_add_to_make_valid(s)
  stack = []
  ary = s.chars
  count = 0
  ary.each do |c|
    if c == '('
      stack.push(c)
    elsif c == ')'
      if stack.empty?
        count += 1
      else
        stack.pop
      end
    end
  end
  count += stack.count
end