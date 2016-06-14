=begin
comments:
1) describe: describes what it's testing for.
2) some conventions: . denote class methods (i.e. Bank's methods) and # denotes instance methods (i.e. bank's methods) (in other languages, this is known as a static class method)
3) objects and variables created between the <describe ... do ... end> are limited within that scope (i.e. after the end, those objects and variables do not exist anymore)
=end

require_relative 'spec_helper'
require_relative '../bank'

describe Bank do  # describing our class
  let(:bank) {Bank.new("TDD Bank")}   #create bank object. putting it here allows us to not have to create the object everytime we want to test
  describe ".new" do     # dscribing the .new method in our class
    it "creates a Bank Object" do   # <it> is a function.
      expect(bank).to_not eq nil    #expect is a function
    end
  end

  describe "#name" do    # testing for instance methods
    it "has a name" do
      expect(bank.name).to eq "TDD Bank"
    end
  end

  describe "#create_account" do
    it "has an account" do
      bank.create_account("Bob", 200)
      expect(bank.accounts["Bob"]).to eq 200
    end
  end

  describe "#deposit" do
    it "deposits money into customer's account" do
      bank.create_account("Bob", 200)
      bank.deposit("Bob", 300)
      expect(bank.accounts["Bob"]).to eq 500
    end
  end

  describe "#balance" do
    it "returns the balance in the customer's account" do
      bank.create_account("Bob", 200)
      bank.deposit("Bob", 300)
      expect(bank.accounts["Bob"]).to eq 500
    end
  end

  describe "#withdraw" do
    it "subtracts the stated amount from the customer's acct" do
      bank.create_account("Bob", 200)
      bank.deposit("Bob", 300)
      bank.withdraw("Bob", 400)
      expect(bank.accounts["Bob"]).to eq 100
    end

    it "denies withdrawals if withdrawal amount is greater than account balance" do
      bank.create_account("Bob", 200)
      bank.deposit("Bob", 300)
      bank.withdraw("Bob", 600)
      expect(bank.accounts["Bob"]).to eq 500
    end
  end
end



#withdraw (subtracts amount, disallow negative withdrawals)
