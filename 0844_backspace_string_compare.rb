# https://leetcode.com/problems/backspace-string-compare/

def convert(str)
  ary = str.chars
  stack = []
  (0..).each do
    c = ary.shift
    if c == '#'
      stack.pop if stack.any?
    else
      stack.push(c)
    end
    break if ary.empty?
  end
  stack
end

# @param {String} s
# @param {String} t
# @return {Boolean}
def backspace_compare(s, t)
  convert(s) == convert(t)
end