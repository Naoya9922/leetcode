# https://leetcode.com/problems/word-pattern/

def unique?(ary)
  ary.group_by(&:itself).map{|_,v| v.count}.all?{|c| c == 1}
end

# @param {String} pattern
# @param {String} s
# @return {Boolean}
def word_pattern(pattern, s)
  p = pattern.chars
  s = s.split(' ')
  return false if p.length != s.length
  zip = p.zip(s).uniq
  unique?(zip.map(&:first)) && unique?(zip.map(&:last))
end