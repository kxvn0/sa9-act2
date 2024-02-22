require_relative 'bankacc'

RSpec.describe BankAccount do
  describe "#deposit" do
    it "increases the balance by the deposit amount" do
      bank_acc = BankAccount.new(500)
      i_balance = bank_acc.balance
      deposit_amount = 20
      bank_acc.deposit(deposit_amount)
      expect(bank_acc.balance).to eq(i_balance + deposit_amount)
    end
  end

  describe "#withdraw" do
    it "decreases the balance by the withdrawal amount if funds are available" do
      bank_acc = BankAccount.new(500)
      i_balance = bank_acc.balance
      withdrawal_amount = 70
      bank_acc.withdraw(withdrawal_amount)
      expect(bank_acc.balance).to eq(i_balance - withdrawal_amount)
    end

    it "does not change the balance if insufficient funds" do
      bank_acc = BankAccount.new(500)
      i_balance = bank_acc.balance
      withdrawal_amount = 800
      bank_acc.withdraw(withdrawal_amount)
      expect(bank_acc.balance).to eq(i_balance)
    end
  end

  describe "#balance" do
    it "returns the current balance" do
      bank_acc = BankAccount.new(500)
      expect(bank_acc.balance).to eq(500)
    end
  end
end
