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
    interface.get_barcode
    barcode = gets.chomp.to_i
    if inventory.check_if_available(barcode) then
      interface.success(barcode)
      number = gets.chomp.to_i
      number == 1 ? user_menu : interface.seeyou
    else
      interface.failure(number)
      user_menu
    end
  end

end
