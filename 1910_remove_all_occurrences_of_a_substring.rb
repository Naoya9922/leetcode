# https://leetcode.com/problems/remove-all-occurrences-of-a-substring/

# @param {String} s
# @param {String} part
# @return {String}
def remove_occurrences(s, part)
  while(s.index(part))
    s = s.sub(part, '')
  end
  s
end
