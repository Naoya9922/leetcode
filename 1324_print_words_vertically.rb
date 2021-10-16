# https://leetcode.com/problems/print-words-vertically/

# @param {String} s
# @return {String[]}
def print_vertically(s)
  ary = s.split(' ')
  max = ary.max_by(&:length).length
  ary = ary.map{|str| str.ljust(max, ' ')}
  ary.map(&:chars).transpose.map(&:join).map(&:rstrip)
end