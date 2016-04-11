# design a class name Burger
# create a menu array, creat a price hash
# one method that delete an food in the menu and print that food is sold out
# raise the price of the food by one$

class Burger
	attr_accessor :payment, :new_payment, :price
	def initialize
		p 'I love to eat burgers'
		@menu = ['cheese_burger', 'cheese_bacon_burger', 'veg_burger', 'chicken_burger']
		@price = {:cheese_burger => 2, :cheese_bacon_burger => 3, :veg_burger => 5, :chicken_burger => 2}
	end

	def greeting
		puts "Here is your menu: #{@menu}"
	end

	def menu
		@menu
	end

	def price
		@price
	end

	def sold_out(item)
		@menu.delete(item)
		p "Sorry, we have no more #{item}..."
	end

	def payment(food)
		#store = ':' + item
		@price[food] #not finish here! want to print price for the order.
	end

	def new_payment(food)
		@price[food] + 1
	end

	def unreasonable_price
		@unreasonable_price = 1
	end
end

burger = Burger.new
burger.greeting
#burger.sold_out('cheese_burger')
#puts "Here is your the updated menu: #{burger.menu}."
# burger.payment(:veg_burger)
# burger.new_payment(:veg_burger)
#===========================
#ask what do they want to order 
#say their order is sold out lol
puts "What do you want to order?"
order = gets.chomp.to_s
burger.sold_out(order)
puts "What do you want to order in the updated menu #{burger.menu}?"
second_order = gets.chomp.to_s
if second_order == 'cheese_burger'
	puts "Your order is suppose to be #{burger.payment(:cheese_burger)}$, but because it is holiday today, you have to pay #{burger.new_payment(:cheese_burger)}$. "
elsif second_order == 'cheese_bacon_burger'
	puts "Your order is suppose to be #{burger.payment(:cheese_bacon_burger)}$, but because it is holiday today, you have to pay #{burger.new_payment(:cheese_bacon_burger)}$. "
elsif second_order == 'veg_burger'
	puts "Your order is suppose to be #{burger.payment(:veg_burger)}$, but because it is holiday today, you have to pay #{burger.new_payment(:veg_burger)}$. "
elsif second_order == 'chicken_burger'
	puts "Your order is suppose to be #{burger.payment(:chicken_burger)}$, but because it is holiday today, you have to pay #{burger.new_payment(:chicken_burger)}$. "
else
	puts "Your order is not on the menu."
end

# does a @ is neccessary when there is attr_accessor already?
# why do i need attr_reader if I already use attr_accessor






