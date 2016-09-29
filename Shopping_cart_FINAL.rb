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
      if @items.count > 5
        total_price = total_price * 0.9
      end

      total_price

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

joshs_cart = ShoppingCart.new
banana = Fruit.new("Banana", 10)
vaccuum = Houseware.new("Vaccuum", 150)
oj = Item.new("Orange Juice", 10)
rice = Item.new("Rice", 1)
anchovies = Item.new("Anchovies", 2)

joshs_cart.add_item(oj)
joshs_cart.add_item(rice)
joshs_cart.add_item(oj)
joshs_cart.add_item(rice)
joshs_cart.add_item(oj)
joshs_cart.add_item(rice)
puts joshs_cart.get_total_price

