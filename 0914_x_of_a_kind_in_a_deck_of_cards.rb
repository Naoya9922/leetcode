# https://leetcode.com/problems/x-of-a-kind-in-a-deck-of-cards/

# @param {Integer[]} deck
# @return {Boolean}
def has_groups_size_x(deck)
  hash = deck.group_by(&:itself).transform_values(&:count)
  gcd = hash.values.inject(0){|acc, n| acc.gcd(n)}
  gcd != 1
end