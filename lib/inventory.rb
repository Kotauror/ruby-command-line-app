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

  def check_if_available(numbers)
    d = numbers.length
    counter = 0
    numbers.each { |number|
      products.each { |product|
        if number == product.barcode then
          counter += 1
          products.delete(product)
        end
      }
    }
    counter == d ? true : false
  end

end
