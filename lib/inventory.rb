class Inventory

  attr_reader :products

  def initialize
    @products = []
  end

  def add_to_products(product)
    products << product
  end

end
