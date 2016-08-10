describe Bank do

  subject(:bank) { Bank.new(account_balance) }
  let(:account_balance) { double :account_balance, show_balance: 0 }

  describe "#show_balance" do

    it "returns the account balance" do
      expect(bank).to respond_to(:show_balance)
    end

    it "has a default starting balance of zero" do
      expect(bank.show_balance).to eq 0
    end

  end

  describe "#deposit" do

    it "can be increased by depositing money" do
      amount = 999
      expect(account_balance).to receive(:update_balance).with(amount)
      bank.deposit(amount)
    end

  end

  describe "#withdraw" do
    it "can be decreased by withdrawing money" do
      amount = 999
      expect(account_balance).to receive(:update_balance).with(-amount)
      bank.withdraw(amount)
    end
  end

end
