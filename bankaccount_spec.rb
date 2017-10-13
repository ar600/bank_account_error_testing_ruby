require_relative "bank_ruby_assignment"
RSpec.describe BankAccount do
  before(:each) do
    @bank1 = BankAccount.new

  end

  it "Has a getter method for retrieving the checking account balance" do
    expect(@bank1.checking).to eq(10000)
  end

  it "- Has a getter method that retrieves the total account balance" do
    expect(@bank1.total).to eq("Checking Balance: 10000\nSaving Balance: 0\nTotal Balance: 10000")

  end

  it "Has a function that allows the user to withdraw cash" do
    expect(@bank1.withdrawal('checking', 10)).to eq(9990)
  end

  it "Raises an error if a user tries to withdraw more money than they have in the account" do
    expect{@bank1.withdrawal('checking', 15000)}.to raise_error('Insufficient Funds, you have 10000 in this account')
  end

  it " Raises an error when the user attempts to retrieve the total number of bank accounts" do
    expect{@bank1.bank_accounts}.to raise_error(NoMethodError)
  end

  it "Raises an error when the user attempts to set the interest rate" do
    expect{@bank1.interest_rate = 0.08}.to raise_error(NoMethodError)
  end



end
