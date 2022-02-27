# https://leetcode.com/problems/string-without-aaa-or-bbb/

# @param {Integer} a
# @param {Integer} b
# @return {String}
def str_without3a3b(a, b)
  if a > b
    l, s = a, b
    l_str, s_str = 'a', 'b'
  else
    l, s = b, a
    l_str, s_str = 'b', 'a'
  end
  result = ""
  cnt_l = 0
  begin
    if l > s && cnt_l < 2
      result << l_str
      l -= 1
      cnt_l += 1
    else
      result << s_str
      s -= 1
      cnt_l = 0
    end
  end while(l > 0 || s > 0)
  result
end
