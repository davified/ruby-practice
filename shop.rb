class Bank
  attr_accessor :name, :accounts #this creates an instance variable (@name) which we can access (i.e. read and write)
  def initialize(name)   #initialize is a constructor function that is automatically called when you instantiate a class
    @name = name     #this assigns param1 (name) to the instance variable (@name) for us
    @accounts = {}
  end

  def create_account(customer, deposit)
    @accounts[customer] = deposit
  end

  def deposit(customer, deposit_amount)
    @accounts[customer] += deposit_amount
  end

  def balance(customer)
    @accounts[customer]
  end

  def withdraw(customer, withdrawal_amount)
    if withdrawal_amount <= @accounts[customer]
      @accounts[customer] -= withdrawal_amount
    end
  end
end
