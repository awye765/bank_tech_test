describe Bank do

  subject(:bank) { described_class.new }

  describe "#balance" do

    it "returns the balance of the account" do
      expect(bank).to respond_to(:show_balance)
    end

    it "has a default starting balance of zero" do
      expect(bank.show_balance).to eq 0
    end

    it "can be increased by depositing money" do
      expect{ bank.deposit(1) }.to change{ bank.balance }.by(1)
    end

    it "can be decreased by withdrawing money" do
      bank.deposit(1)
      expect{ bank.withdraw(1) }.to change{ bank.balance }.by(-1)
    end

  end

end
