class Account

  def initialize(account_balance = Balance.new, transaction_history = TransactionHistory.new)
    @account_balance = account_balance
    @transaction_history = transaction_history
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
    @transaction_history.history
  end

end
