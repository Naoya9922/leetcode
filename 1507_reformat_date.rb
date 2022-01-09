# https://leetcode.com/problems/reformat-date/

require 'date'

# @param {String} date
# @return {String}
def reformat_date(date)
  Date.parse(date).strftime("%Y-%m-%d")
end