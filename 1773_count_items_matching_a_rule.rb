# https://leetcode.com/problems/count-items-matching-a-rule/

# @param {String[][]} items
# @param {String} rule_key
# @param {String} rule_value
# @return {Integer}
def count_matches(items, rule_key, rule_value)
  items.select do |type, color, name|
    rule_key == "type" && type == rule_value ||
    rule_key == "color" && color == rule_value ||
    rule_key == "name" && name == rule_value
  end.count
end