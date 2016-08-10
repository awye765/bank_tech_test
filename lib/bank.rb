class Bank

  def initialize(account_balance = Account_Balance.new)
    @account_balance = account_balance
  end

  def show_balance
    @account_balance.show_balance
  end

  def deposit(amount)
    @account_balance.update_balance(amount)
  end

  def withdraw(amount)
    @account_balance.update_balance(-amount)
  end

end
