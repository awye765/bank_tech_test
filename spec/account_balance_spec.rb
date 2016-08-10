describe Account_Balance do

  subject(:account_balance) { Account_Balance.new }

  describe "#show_balance" do

    it "has a starting balance of 0" do
      expect(account_balance.show_balance).to eq 0
    end

  end

  describe "#update_balance" do

    it "can increase the balance" do
      account_balance.update_balance(1000)
      expect(account_balance.show_balance).to eq 1000
    end

    it "can descrease the balance" do
      account_balance.update_balance(-1000)
      expect(account_balance.show_balance).to eq -1000
    end

  end
end
