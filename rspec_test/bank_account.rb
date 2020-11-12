
class BankAccount
  def initialize(amount)
    @amount = amount
  end
  def deposit(amount)
    @amount = @amount + amount if amount > 0
  end
  def balance
    @amount
  end
  def withdraw(amount)
    if amount > 0 && @amount >= amount
    @amount = @amount - amount
    # amount
    else
      0
    end
  end
end
