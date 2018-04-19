require_relative './lib/interface'
require_relative './lib/inventory'
require_relative './lib/product'
require_relative './lib/shop'
require_relative './lib/customer'
# require 'sinatra/base'
#
# class Shopping < Sinatra::Base
#
#   enable :sessions

  shop = Shop.new
  psiak = Product.new("psiak", 10, 510)
  kitkat = Product.new("kitkat", 20, 820)
  kot = Product.new("katkat", 20, 810)
  shop.inventory.add_to_products([psiak, kitkat, kot])
  shop.user_setup

#   get '/' do
#     @products = shop.inventory.return_products
#     if shop.customer then
#       @userproducts = shop.customer.basket
#       @name = shop.customer.name
#       @balance = shop.customer.balance
#     end
#     erb(:'index')
#   end
#
#   post '/user/new' do
#     name = params[:name]
#     user = Customer.new(name)
#     shop.set_customer(user)
#     session[:user] = shop.customer
#     redirect '/'
#   end
#
#   post '/money/new' do
#     money = params[:money]
#     money = money.to_i
#     shop.customer.add_money(money)
#     redirect '/'
#   end
#
#   post '/order/new' do
#     number = params[:product]
#     product = shop.inventory.get_product_by_barcode(number)
#     output = shop.inventory.check_if_available(number)
#     if output == true then
#       if shop.customer.balance >= product.price then
#         shop.customer.add_to_basket(product)
#         shop.inventory.deletete_product(product)
#       end
#     end
#     redirect '/'
#   end
#
# end
