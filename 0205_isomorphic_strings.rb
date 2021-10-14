# https://leetcode.com/problems/isomorphic-strings/

# @param {String} s
# @param {String} t
# @return {Boolean}
def is_isomorphic(s, t)
  zip = s.chars.zip(t.chars).uniq
  first = zip.map(&:first)
  last = zip.map(&:last)
  first.length == first.uniq.length && last.length == last.uniq.length
end