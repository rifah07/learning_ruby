class BankAccount
  def initialize(balance)
    @balance = balance
  end

  def deposit(amount)
    @balance += amount if amount > 0
  end

  def withdraw(amount)
    if amount <= @balance && amount > 0
      @balance -= amount
    else
      puts 'Invalid withdrawal amount'
    end
  end

  attr_reader :balance
end

account = BankAccount.new(1000)
account.deposit(500)
puts account.balance # 1500
account.withdraw(2000) # Invalid withdrawal amount# frozen_string_literal: true
