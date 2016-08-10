describe TransactionHistory do

  subject(:transaction_history) { TransactionHistory.new }

  describe "#show_history" do

    it "initially has an empty transaction history" do
      expect(transaction_history.show_history).to be_empty
    end

  end

end
