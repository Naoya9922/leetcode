# https://leetcode.com/problems/day-of-the-week/

require 'date'

# @param {Integer} day
# @param {Integer} month
# @param {Integer} year
# @return {String}
def day_of_the_week(day, month, year)
  day_of_week = ["Sunday", "Monday", "Tuesday", "Wednesday", "Thursday", "Friday", "Saturday"]
  date = Date.parse([year,month,day].join('/'))
  day_of_week[date.wday]
end