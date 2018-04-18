require_relative 'interface'
require_relative 'inventory'

class Shop

  attr_reader :interface, :inventory

  def initialize
    @interface = Interface.new
    @inventory = Inventory.new
  end

  def add_products_to_inventory(products)
    products.each { |product|
      inventory.add(product)
    }
  end

end
