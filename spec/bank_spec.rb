describe Bank do

  subject(:bank) { Bank.new(account_balance) }
  let(:account_balance) { double :account_balance, show_balance: 0 }
  let(:account_statement) { double :account_statement, history: [] }

  describe "#show_balance" do

    it "returns the account balance" do
      expect(bank).to respond_to(:show_balance)
    end

  end

  describe "#deposit" do

    it "can update balance by increasing balance amount" do
      amount = 999
      expect(account_balance).to receive(:update_balance).with(amount)
      bank.deposit(amount)
    end

  end

  describe "#withdraw" do
    it "can update balance by decreasing balance amount" do
      amount = 999
      expect(account_balance).to receive(:update_balance).with(-amount)
      bank.withdraw(amount)
    end
  end

  describe "#print_statement" do
    it "can print a statement of transactions" do
      expect(account_statement.history).to be_empty
    end
  end

end
