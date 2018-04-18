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

  def get_number
    p "Type a barcode of a product you're interessted in."
  end

  def shop_again
    p "Type 1 if you want to shop for more products."
  end


end
