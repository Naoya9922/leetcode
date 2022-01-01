# https://leetcode.com/problems/final-value-of-variable-after-performing-operations/

# @param {String[]} operations
# @return {Integer}
def final_value_after_operations(operations)
  operations.inject(0) do |result, op|
    if ['X++', '++X'].include?(op)
      result += 1
    elsif ['X--', '--X'].include?(op)
      result -= 1
    end
    result
  end
end