require 'pry'
class BankAccount
  attr_reader :name
  attr_accessor :balance, :status

  def initialize(name)
    @name = name
    @status = "open"
    @balance = 1000
  end

  def deposit(amount)
    @balance += amount
  end

  def display_balance
    "Your balance is $#{self.balance}."
  end

  def valid?
    bool = false
    # binding.pry
    if self.balance > 0 && self.status == 'open'

      bool = true
    end
    bool
  end

  def close_account
    self.status = 'closed'
  end

end
