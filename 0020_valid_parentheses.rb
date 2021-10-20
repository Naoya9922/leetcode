# @param {String} s
# @return {Boolean}
def is_valid(s)
  ary = s.split('')
  start_paren = {a: '(', b: '{', c: '['}
  stop_paren = {a: ')', b: '}', c: ']'}

  stack = []
  ary.each do |str|
    if start_paren.values.include?(str)
      stack.push(start_paren.invert[str])
    end
    if stop_paren.values.include?(str)
      unless stack.include?(stop_paren.invert[str])
        return false
      end
      if stack.last == stop_paren.invert[str]
        stack.pop()
      end
    end
  end
  return stack.empty?
end