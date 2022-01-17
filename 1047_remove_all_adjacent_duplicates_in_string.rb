# https://leetcode.com/problems/remove-all-adjacent-duplicates-in-string/

# @param {String} s
# @return {String}
def remove_duplicates(s)
  stack = []
  s.chars.each do |c|
    last = stack
    if c == stack.last
      stack.pop
    else
      stack.push(c)
    end
  end
  stack.join
end