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

  def get_barcode
    p "Type a barcode of a product you're interessted in."
  end

  def success(number)
    p "You've purchased a product number #{number}. If you want to shop again, type 1."
  end

  def failure(number)
    p "#{number} is not available - try again!"
  end

  def seeyou
    p "See you!"
  end

end
