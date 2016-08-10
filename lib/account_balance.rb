class Account_Balance
  attr_reader :balance

  def initialize
    @balance = 0
  end

  def update_balance(amount)
    @balance += amount
  end

  def show_balance
    @balance
  end

end
