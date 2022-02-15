# https://leetcode.com/problems/lemonade-change/

# @param {Integer[]} bills
# @return {Boolean}
def lemonade_change(bills)
  hash = Hash.new(0)
  bills.each do |b|
    case b
      when 5
        hash[b] += 1
        next
      when 10
        if hash[5] >= 1
          hash[5] -= 1
          hash[10] += 1
          next
        else
          return false
        end
      when 20
        if hash[10] >= 1 && hash[5] >= 1
          hash[10] -= 1
          hash[5] -= 1
          next
        elsif hash[5] >= 3
          hash[5] -= 3
          next
        else
          return false
        end
    end
  end
  true
end
