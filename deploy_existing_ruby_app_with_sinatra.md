1. `Bundle init` - creates a gemfile
2. Add following gems to the gemfile:

gem 'sinatra'
gem 'rspec'
gem 'capybara'

3. `bundle install` - installs the gems.
4. Setup a basic application in the root - app.rb

# in app.rb

```ruby
require 'sinatra/base'

class Shopping < Sinatra::Base
  get '/' do
    'Hello World'
  end

  run! if app_file == $0
end
```

5. Create config.ru file. Add:

# in config.ru

```ruby
require_relative "./app"

run Shopping
```

6. Make app talk to capybara

# at the top of spec/spec_helper.rb

```ruby
# Set the environment to "test"
ENV['RACK_ENV'] = 'test'

# Bring in the contents of the `app.rb` file
require File.join(File.dirname(__FILE__), '..', 'app.rb')

# Require all the testing gems
require 'capybara'
require 'capybara/rspec'
require 'rspec'

# Tell Capybara to talk to BookmarkManager
Capybara.app = BookmarkManager

### the rest of the file ###
```

7. Link my existing app to Sinatra display products on the website.

```ruby
class Shopping < Sinatra::Base
  shop = Shop.new
  psiak = Product.new("psiak", 10, 510)
  kitkat = Product.new("kitkat", 20, 820)
  shop.inventory.add_to_products([psiak, kitkat])
  # shop.interface.hello

  get '/' do
    'Hello and welcome to the shop'
    @products = shop.inventory.return_products
    p @products
    erb(:'index')
  end

  # run! if app_file == $0
end
```

8. Get order & print order

```ruby

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
```
