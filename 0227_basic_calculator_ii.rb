# https://leetcode.com/problems/basic-calculator-ii/

def calculate_element(s)
  ary = s.split(/\b/)
  stack = []
  result = 0
  ary.each do |e|
    stack.push(e)
    if (m = stack[-2].to_s.match(/[\*\/]/))
      stack[-3..] = stack[-3..].select{|n| n.match?(/\d+/)}.map(&:to_i).inject(m[0]).to_s
    end
  end
  stack.each_with_index do |e, i|
    if i == 0
      result = e.to_i
      next
    end
    next unless e.match?(/\d+/)
    result = result.send(stack[i-1], e.to_i)
  end
  result
end

# @param {String} s
# @return {Integer}
def calculate(s)
  calculate_element(s.split(' ').join)
end
