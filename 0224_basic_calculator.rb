# https://leetcode.com/problems/basic-calculator/

def sum_up(ary)
  ary = ary.join.gsub('--', '+').scan(/(?:[\+\-])?\d+/)
  ary.map(&:to_i).inject(&:+)
end

# @param {String} s
# @return {Integer}
def calculate(s)
  exp = s.gsub(/\s+/, '').chars
  ary = []
  exp.each do |c|
    if c.match?(/\d+/) || ['+', '-', '('].include?(c)
      ary.push(c)
    elsif c == ')'
      idx = ary.rindex('(')
      result = sum_up(ary[idx+1..])
      ary[idx..] = result
    end
  end
  sum_up(ary)
end
