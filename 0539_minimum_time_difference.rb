# https://leetcode.com/problems/minimum-time-difference/

require 'time'

# @param {String[]} time_points
# @return {Integer}
def find_min_difference(time_points)
  time_points = time_points.sort
  min = Float::INFINITY
  time_points.each_cons(2) do |t1, t2|
    min = [(Time.parse(t2) - Time.parse(t1)).to_i / 60, min].min
  end
  today = Date.today
  today_str = today.to_s
  next_day_str = (today + 1).to_s
  min = [(Time.parse("#{next_day_str} #{time_points.first}") - Time.parse("#{today_str} #{time_points.last}")).to_i / 60, min].min
  min
end
