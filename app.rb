require_relative './lib/interface'
require_relative './lib/inventory'
require_relative './lib/product'
require_relative './lib/shop'
require 'sinatra/base'

class Shopping < Sinatra::Base
  shop = Shop.new
  psiak = Product.new("psiak", 10, 510)
  kitkat = Product.new("kitkat", 20, 820)
  kot = Product.new("katkat", 20, 820)
  shop.inventory.add_to_products([psiak, kitkat, kot])
  # shop.interface.hello

  get '/' do
    'Hello and welcome to the shop'
    @products = shop.inventory.return_products
    p @products
    erb(:'index')
  end

  post '/order/new' do
    number = params[:product]
    output = shop.inventory.check_if_available(number)
    redirect '/'
  end

end
