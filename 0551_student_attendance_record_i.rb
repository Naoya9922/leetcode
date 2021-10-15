# https://leetcode.com/problems/student-attendance-record-i/

# @param {String} s
# @return {Boolean}
def check_record(s)
  absent_count = s.count("A")
  late = s.match?(/L{3,}/)
  absent_count < 2 && !late
end