# https://leetcode.com/problems/maximum-population-year/

# @param {Integer[][]} logs
# @return {Integer}
def maximum_population(logs)
  logs.map{|s, _| [s, logs.select{|ary| Range.new(*ary, true).cover?(s)}.count]}.sort_by{|s, c| [-c, s]}.first.first
end