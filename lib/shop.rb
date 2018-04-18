require_relative 'interface'
require_relative 'inventory'

class Shop

  attr_reader :interface, :inventory

  def initialize
    @interface = Interface.new
    @inventory = Inventory.new
  end

  def user_menu
    inventory.show_products
    interface.get_number
    numbers = gets.chomp
    inventory.check_if_available(numbers)
  end

end
