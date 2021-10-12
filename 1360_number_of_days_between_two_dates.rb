# https://leetcode.com/problems/number-of-days-between-two-dates/

require 'time'

# @param {String} date1
# @param {String} date2
# @return {Integer}
def days_between_dates(date1, date2)
  ((Time.parse(date1) - Time.parse(date2)) / 60 / 60 / 24).abs.to_i
end