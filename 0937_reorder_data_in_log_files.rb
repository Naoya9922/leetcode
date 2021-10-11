# https://leetcode.com/problems/reorder-data-in-log-files/

# @param {String[]} logs
# @return {String[]}
def reorder_log_files(logs)
  digs, lets = logs.partition do |log|
    arr = log.split(' ')
    arr[1..(arr.length - 1)].all?{|w| w.match?(/\d+/)}
  end
  lets = lets.sort_by do |l|
    [l.split(' ')[1..(l.length - 1)].join(' '), l.split(' ')[0]]
  end
  lets + digs
end