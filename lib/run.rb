require_relative 'interface'
require_relative 'inventory'
require_relative 'product'
require_relative 'shop'

shop = Shop.new
psiak = Product.new("psiak", 10, 510)
kitkat = Product.new("kitkat", 20, 820)
shop.inventory.add_to_products([psiak, kitkat])
shop.interface.hello
shop.user_menu
