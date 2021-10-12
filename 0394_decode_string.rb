# https://leetcode.com/problems/decode-string/

# @param {String} s
# @return {String}
def decode_string(s)
  ary = s.split(/(?<!\d)/)
  stack = []
  ary.each do |str|
    if md = str.match(/(^\d+)/)
      stack.push(md[0])
    elsif str == ']'
      tmp_ary = []
      while(true) do
        tmp_str = stack.pop
        if md = tmp_str.match(/(^\d+)/)
          stack.push(tmp_ary.reverse.join * md[0].to_i)
          break
        else
          tmp_ary.push(tmp_str)
        end
      end
    else
      stack.push(str)
    end
  end
  stack.join
end