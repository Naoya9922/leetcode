# https://leetcode.com/problems/average-salary-excluding-the-minimum-and-maximum-salary/

# @param {Integer[]} salary
# @return {Float}
def average(salary)
  salary = salary.sort
  salary.shift
  salary.slice!(-1)
  salary.sum / salary.count.to_f
end