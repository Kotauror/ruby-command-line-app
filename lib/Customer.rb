class Customer

  attr_reader :basket, :name, :balance

  def initialize(name)
    @name = name
    @basket = []
    @balance = 0
  end

  def add_to_basket(barcode)
    basket << barcode
  end

  def add_money_to_acc(money)
    @balance += money
  end

end
