# https://leetcode.com/problems/increasing-decreasing-string/

# @param {String} s
# @return {String}
def sort_string(s)
  ary = s.chars.sort
  uniq_ary = ary.uniq
  result = []
  while(ary.any?) do
    [uniq_ary, uniq_ary.reverse].each do |tmp_ary|
      tmp_ary.each do |c|
        idx = ary.find_index(c)
        next unless idx
        ary.delete_at(idx)
        result << c
      end
    end
  end
  result.join
end
