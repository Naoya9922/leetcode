# https://leetcode.com/problems/find-and-replace-in-string/

# @param {String} s
# @param {Integer[]} indices
# @param {String[]} sources
# @param {String[]} targets
# @return {String}
def find_replace_string(s, indices, sources, targets)
  ary = s.chars
  result = []
  idx = 0
  (0..).each do
    break unless ary[idx]
    if (index = indices.index(idx)) && ary[idx..(idx+sources[index].length-1)].join == sources[index]
      result << targets[index]
      idx += sources[index].length
    else
      result << ary[idx]
      idx += 1
    end
  end
  result.join
end