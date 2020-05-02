require_relative "src/bank"

if __FILE__ == $0
  bank_account = BankAccount.new
  bank_account.run()
end
