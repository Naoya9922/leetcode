# https://leetcode.com/problems/simple-bank-system/

class Bank

  attr_accessor :b

=begin
  :type balance: Integer[]
=end
  def initialize(balance)
    @b = balance.map.with_index{|a, i| [i+1, a]}.to_h
  end

=begin
  :type account1: Integer
  :type account2: Integer
  :type money: Integer
  :rtype: Boolean
=end
  def transfer(account1, account2, money)
    return false unless b[account1] && b[account1] >= money
    return false unless b[account2]
    b[account1] -= money
    b[account2] += money
    true
  end

=begin
  :type account: Integer
  :type money: Integer
  :rtype: Boolean
=end
  def deposit(account, money)
    return false unless b[account]
    b[account] += money
    true
  end

=begin
  :type account: Integer
  :type money: Integer
  :rtype: Boolean
=end
  def withdraw(account, money)
    return false unless b[account] && b[account] >= money
    b[account] -= money
    true
  end

end

# Your Bank object will be instantiated and called as such:
# obj = Bank.new(balance)
# param_1 = obj.transfer(account1, account2, money)
# param_2 = obj.deposit(account, money)
# param_3 = obj.withdraw(account, money)