class Interface

  def initialize
  end

  def hello
    p "Hello and welcome to the Shop."
    sleep(1)
    p "Below you can find a list of products available to buy."
    sleep(1)
    p "Each product has a name, price and barcode."
    sleep(1)
  end

  def ask_for_name
    p "whats your name?"
  end

  def show_balance(customer)
    p "#{customer.balance}"
  end

  def show_basket(customer)
    p "#{customer.basket}"
  end

  def min_characters
    p "please enter at least one character"
  end

  def one_two_three
    p "Please enter 1, 2, 3 or 4"
  end

  def product_not_available
    p "A product with such barcode is not available."
  end

  def you_dont_have_money
    p "You don't have enough balance - add money to your account"
  end

  def show_general_options
    print "To start shopping type 1,\n"
    print "To add money to your account type 2,\n"
    print "To see your balance type 3,\n"
    print "To see your basket type 4,\n"
    print "To quit type 5.\n"
  end

  def get_barcode
    p "Type a barcode of a product you're interessted in."
  end

  def success(product)
    p "You've purchased a product #{product.name}."
  end

  def failure
    p "You are not able to buy that product."
  end

  def seeyou
    p "See you!"
  end

  def how_much_money
    p "Type how much money do you want to add"
  end

  def askagainformoney
    p "Write any number, other than 0."
  end

end
