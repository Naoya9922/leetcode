# https://leetcode.com/problems/remove-covered-intervals/

# @param {Integer[][]} intervals
# @return {Integer}
def remove_covered_intervals(intervals)
  result = []
  intervals.each.with_index do |ary1, idx|
    remaining_ary = intervals.dup
    remaining_ary.delete_at(idx)
    remove =  remaining_ary.any? do |ary2|
      ary2[0] <= ary1[0] && ary1[1] <= ary2[1]
    end
    unless remove
      result << ary1
    end
  end
  result.count
end