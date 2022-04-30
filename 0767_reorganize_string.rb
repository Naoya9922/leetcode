# https://leetcode.com/problems/reorganize-string/

# @param {String} s
# @return {String}
def reorganize_string(s)
  hash = s.chars.group_by(&:itself).transform_values(&:count)
  result = []
  while(true) do
    last = result.last
    ary = hash.max_by{|s, c| [c == 0 ? -1 : 1, s == last ? -1 : 1, c]}
    break if ary[1] == 0
    str = ary[0]
    return "" if last == str
    result << str
    hash[str] -= 1
  end
  result.join
end
