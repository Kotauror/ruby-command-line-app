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
    number = gets.chomp.to_i
    if inventory.check_if_available(number) then
      interface.success
      number2 = gets.chomp.to_i
      number2 == 1 ? user_menu : interface.seeyou
    else
      p "#{number} is not available - try again!"
      user_menu
    end
  end

end
