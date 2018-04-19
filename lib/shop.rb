require_relative 'interface'
require_relative 'inventory'

class Shop

  attr_reader :interface, :inventory, :customer

  def initialize
    @interface = Interface.new
    @inventory = Inventory.new
    @customer
  end

  def user_setup
    interface.ask_for_name
    while true do
      name = gets.chomp
      if name.length != 0 then
        customer = Customer.new(name)
        set_customer(customer)
        user_general_menu
      else
        interface.min_characters
      end
    end
  end

  def user_general_menu
    interface.show_general_options
    while true do
      option = gets.chomp
      if option == "1" then
        shopping_menu
      elsif option == "2" then
        add_money
      elsif option == "3" then
        interface.show_balance(customer)
        user_general_menu
      elsif option == "4" then
        interface.show_basket(customer)
        user_general_menu
      elsif option == "5" then
        ##quit
      else
        interface.one_two_three
      end
    end
  end

  def shopping_menu
    inventory.show_products
    interface.get_barcode
    barcode = gets.chomp.to_i
    product = inventory.get_product_by_barcode(barcode)
    if !inventory.check_if_available(barcode) then
      interface.product_not_available
      user_general_menu
    end
    if !customer_can_afford(product) then
      interface.you_dont_have_money
      user_general_menu
    end
      customer.add_to_basket(product)
      inventory.deletete_product(product)
      interface.success(product)
      user_general_menu
  end

  def set_customer(customer)
    @customer = customer
  end

  def customer_can_afford(product)
    product.price <= customer.balance
  end

  def add_money
    interface.how_much_money
    while true do
      sum = gets.chomp
      if sum != nil && sum.to_i != 0 then
        customer.add_money_to_acc(sum.to_i)
        user_general_menu
      else
        interface.askagainformoney
      end
    end
  end

end
