class Product

  attr_reader :name, :price, :barcode

  def initialize(name, price, barcode)
    @name = name
    @price = price
    @barcode = barcode
  end

end
