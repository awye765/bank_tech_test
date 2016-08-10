describe "Transaction" do

  let(:date) { Time.new(2016, 02, 18) }
  subject(:transaction) { Transaction.new(100, date)}

  it "has an amount" do
    expect(transaction.amount).to eq 100
  end

  it "has a date" do
    expect(transaction.date).to eq date
  end

end
