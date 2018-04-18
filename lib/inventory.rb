require_relative 'interface'
require_relative 'inventory'
require_relative 'product'

class Inventory

  attr_reader :products

  def initialize
    @products = []
  end

  def add_to_products(array_of_products)
    array_of_products.each { |product|
      products << product
    }
  end

  def show_products
    p " name || price || barcode "
    products.each { |product|
      p "#{product.name}, #{product.price}, #{product.barcode}"
    }
  end

  def check_if_available(number)
    counter = 0
    products.each { |product|
      if number.to_i == product.barcode then
        products.delete(product)
        counter += 1
      end
    }
    counter == 1 ? true : false
  end

  def return_products
    return products
  end

end
