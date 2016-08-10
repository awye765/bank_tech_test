describe Account_Statement do

  subject(:account_statement) { Account_Statement.new }

  describe "#history" do

    it "initially has an empty transaction history" do
      expect(account_statement.history).to be_empty
    end

  end

end
