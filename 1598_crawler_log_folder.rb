# https://leetcode.com/problems/crawler-log-folder/

# @param {String[]} logs
# @return {Integer}
def min_operations(logs)
  stack = []
  logs.each do |log|
    stack.push(log) if log.match?(/^\w+/)
    stack.pop if log == '../'
  end
  stack.count
end