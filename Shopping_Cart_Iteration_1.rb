require 'date'

class ShoppingCart

	def initialize
    	@items = []
    end
    def add_item(item)
    	#Add your item to @items
    	@items.push(item)
  	end
  	def get_total_price

  		total_price = 0
  		@items.each do |item|
  			total_price = total_price + item.price
  		end

  		puts total_price

  	end
end

class Item
	attr_reader :name, :price
	def initialize(name, price)
    	@name = name
    	@price = price
  	end

    def price
    	@price
    end
end

class Houseware < Item
	def price
    	if @price <= 100
    		@price
    	else
    		@price*0.95
    	end
    end
end

class Fruit < Item
    def price
    	today = Date.today.wday
    	if today == 6 || today == 7
    		@price*0.9
    	else
    		@price
    	end
	end
end

banana = Fruit.new("Banana", 10)
orange_juice = Item.new("Orange Juice", 10)
rice = Item.new("Rice", 1)
vacuum_cleaner = Houseware.new("Vacuum Cleaner", 150)
anchovies = Item.new("Anchovies", 2)

shopping_cart = ShoppingCart.new()

shopping_cart.add_item(banana)
shopping_cart.add_item(orange_juice)
shopping_cart.add_item(rice)
shopping_cart.add_item(vacuum_cleaner)
shopping_cart.add_item(anchovies)

shopping_cart.get_total_price

