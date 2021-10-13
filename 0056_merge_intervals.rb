# https://leetcode.com/problems/merge-intervals/

# @param {Integer[][]} intervals
# @return {Integer[][]}
def merge(intervals)
  itvls = intervals.sort_by{|s,e| s}
  max = itvls.length - 1
  result = []
  i = 0
  (0..).each do
    break if !itvls[i]
    s, e = itvls[i]
    (i..max).each do |j|
      s1, e1 = itvls[j]
      if e >= s1
        e = e1 if e1 >= e
        i = j
      else
        break
      end
    end
    result << [s, e]
    i += 1
  end
  result
end