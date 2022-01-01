# https://leetcode.com/problems/latest-time-by-replacing-hidden-digits/

# @param {String} time
# @return {String}
def maximum_time(time)
  ary = time.chars
  ary.map.with_index do |c, idx|
    if c == '?'
      case idx
        when 0
          if ary[1].to_i >= 4
            '1'
          else
            '2'
          end
        when 1
          if ['2', '?'].include?(ary[0])
            '3'
          elsif ['0', '1'].include?(ary[0])
            '9'
          end
        when 3
          '5'
        when 4
          '9'
      end
    else
      c
    end
  end.join
end