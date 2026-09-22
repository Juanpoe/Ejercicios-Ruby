module SavingsAccount
  def self.interest_rate(balance)
    interes =
    if balance < 1000 and balance >= 0
      0.5
    elsif balance >= 1000 and balance < 5000
    1.621
    elsif balance >= 5000
      2.475
    elsif balance < 0
      3.213
    end
    interes.to_f
  end

  def self.annual_balance_update(balance)
    saldo = ((self.interest_rate(balance)/100 )* balance) + balance
    saldo.to_f
  end

  def self.years_before_desired_balance(current_balance, desired_balance) 
    saldo = current_balance
    año = 0
    while saldo < desired_balance
      saldo = self.annual_balance_update(saldo)
        año += 1
    end 
    año
  end
end



