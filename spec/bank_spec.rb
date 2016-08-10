describe Bank do

  subject(:bank) { described_class.new }

  describe "#balance" do

    it "returns the balance of the account" do
      expect(bank).to respond_to(:show_balance)
    end

    it "has a default starting balance of zero" do
      expect(bank.show_balance).to eq 0
    end

  end

end
