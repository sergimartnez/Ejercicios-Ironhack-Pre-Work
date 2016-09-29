class MilkShake
	attr_reader :name, :ingredients
	def initialize(name)
		@name = name
    	@base_price = 3
    	@ingredients = [ ]    
	end
	def add_ingredient(ingredient)
    	@ingredients.push(ingredient)
  	end
  	def price_of_milkshake
		#Let's establish what our counter should be before we start adding ingredients into the mix
		total_price_of_milkshake = @base_price
		#Add each ingredients price to our total
		@ingredients.each do |ingredient|
	    	total_price_of_milkshake += ingredient.price
		end
	    #return  our total price to whoever called for it
		total_price_of_milkshake
	end
end

class Ingredient
	attr_reader :name, :price
 	def initialize(name, price)
   		@name = name
    	@price = price
    end
end

class ShakeShop
	def initialize
		@milkshakes = []
	end
	def add_milkshake(milkshake)
		@milkshakes.push(milkshake)
	end
	def list_all_milkshakes
		@milkshakes.each do |milkshake|
			puts milkshake.name
		end
	end
end

nizars_milkshake = MilkShake.new("Nizars")
banana = Ingredient.new("Banana", 2)
chocolate_chips = Ingredient.new("Chocolate Chips", 1)
nizars_milkshake.add_ingredient(banana)
nizars_milkshake.add_ingredient(chocolate_chips)

oreo_milkshake = MilkShake.new("Oreo")
oreo = Ingredient.new("Oreo", 2)
milk = Ingredient.new("Milk", 1)
egg = Ingredient.new("Egg", 2)
oreo_milkshake.add_ingredient(oreo)
oreo_milkshake.add_ingredient(milk)
oreo_milkshake.add_ingredient(egg)

straberry_milkshake = MilkShake.new("Straberry")
straberry = Ingredient.new("Straberry", 3)
oreo_milkshake.add_ingredient(straberry)
oreo_milkshake.add_ingredient(banana)
oreo_milkshake.add_ingredient(milk)
oreo_milkshake.add_ingredient(egg)

status = "open"

sergio_shop = ShakeShop.new()
sergio_shop.add_milkshake(nizars_milkshake)
sergio_shop.add_milkshake(oreo_milkshake)
sergio_shop.add_milkshake(straberry_milkshake)

puts "Here is the list of all our MilkShakes:\n\n"
sergio_shop.list_all_milkshakes

puts "\n"
puts "What would you like to order?"




