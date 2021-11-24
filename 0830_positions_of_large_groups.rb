# https://leetcode.com/problems/positions-of-large-groups/

# @param {String} s
# @return {Integer[][]}
def large_group_positions(s)
  result = []
  ary = s.split('')
  hash = ary.map.with_index(0) {|s, idx| [idx, s]}.to_h
  mode = false
  sub_ary = []
  count = 0
  hash.each do |k, v|
  if hash[k+1] == hash[k]
    unless mode
      mode = true
      sub_ary << k
    end
    count +=1
  end
  if hash[k+1] != hash[k]
    if mode
      sub_ary << k
      mode = false
      if count >= 2
        result << sub_ary
      end
      sub_ary = []
      count=0
    end
  end
  end
  result
end