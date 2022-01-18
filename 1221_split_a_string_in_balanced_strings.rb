# https://leetcode.com/problems/split-a-string-in-balanced-strings/

# @param {String} s
# @return {Integer}
def balanced_string_split(s)
  ary = s.chars
  stack = []
  count = 0
  ary.each do |c|
    if stack.empty?
      stack.push(c)
    elsif (last = stack.last) != c
      stack.pop
      count += 1 if stack.empty?
    else
      stack.push(c)
    end
  end
  count
end