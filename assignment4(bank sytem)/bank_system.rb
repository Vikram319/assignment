class Account
  @@account_id = 0
  @balance = 0.0
  @user_id = 0
  @account_type = ""
  def initialize
    @@account_id+=1
    @balance = 0.0
    @user_id = @@account_id
  end

  def withdraw_amount
    puts "Enter withdraw amount"
    amount = gets.chomp.to_i
    if @balance - amount < 0
      puts "insufficient balance!!!!\n"
    else
      @balance -=amount
      puts "current balance #{@balance}\n"
    end
  end

  def deposit_amount
    puts "Enter amount want to deposit"
    amount = gets.chomp.to_i
    @balance += amount
    puts "current balance #{@balance}\n"
  end

  def check_balance
    puts "current balance #{@balance}\n"
  end
end

class CurrentAccount < Account
  def calculate_interest
    def initialize
      @account_type = "saving"
      super
    end
    puts "Enter no. of months"
    months = gets.chomp.to_i
    interest = @balance+(@balance*0.08*(months/12.0))
    puts "Amount after #{months} months will be : #{interest}\n"
  end
end

class SavingAccount < Account
  def calculate_interest
    def initialize
      @account_type = "saving"
      super
    end
    puts "Enter no. of months\n"
    months = gets.chomp.to_i
    interest = @balance+(@balance*0.12*(months/12.0))
    print "Amount after #{months} months will be : #{interest}\n"
  end
end

print "*************Welcome to PNB****************\n\n"

puts "Create Account"
puts "1.Saving Account\n2.SavingAccount\n"
t_account = gets.chomp.to_i
if t_account == 1
  obj = SavingAccount.new()
else
  obj = CurrentAccount.new()
end
ch = 0
while ch!=6

  puts "1. Check Balance\n2. Withdraw Money\n3. Deposit Money\n4. Calculate Interest\n5. Exit\n"
  ch = gets.chomp.to_i
  case ch
    when 1
        obj.check_balance()
    when 2
        obj.withdraw_amount
    when 3
        obj.deposit_amount
    when 4
        obj.calculate_interest
    when 5
        break
    else
       puts "invalid input"
  end

end

