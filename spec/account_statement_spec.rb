describe Account_Statement do

  subject(:account_statement) { Account_Statement.new }

  describe "#show_history" do

    it "initially has an empty transaction history" do
      expect(account_statement.show_history).to be_empty
    end

  end

end
