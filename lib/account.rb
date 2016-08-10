class Account

  def initialize(account_balance = Balance.new, account_statement = TransactionHistory.new)
    @account_balance = account_balance
    @account_statement = account_statement
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

  def print_statement
    @account_statement.history
  end

end
