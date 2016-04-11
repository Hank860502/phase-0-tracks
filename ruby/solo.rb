# design a class name Burger
# create a menu array, creat a price hash
# ask what do they want to order 
# say their order is sold out
# one method that delete an food in the menu and print that food is sold out
# raise the price of the food by one$
# ask if there is other customer

class Burger
	attr_reader :greeting, :menu, :sold_out
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
end
today_order = []  #array to store user orders
burger = Burger.new
burger.greeting
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

today_order << burger

puts "Is there second customer coming?(y/n)"
more_customer = gets.chomp.to_s

if more_customer == "n"
	puts "#{today_order}"
elsif more_customer == "y"
	burger2 = Burger.new
	burger2.greeting
	puts "What do you want to order?"
	order = gets.chomp.to_s
	burger2.sold_out(order)
	puts "What do you want to order in the updated menu #{burger.menu}?"
	second_order = gets.chomp.to_s
	if second_order == 'cheese_burger'
		puts "Your order is suppose to be #{burger2.payment(:cheese_burger)}$, but because it is holiday today, you have to pay #{burger2.new_payment(:cheese_burger)}$. "
	elsif second_order == 'cheese_bacon_burger'
		puts "Your order is suppose to be #{burger2.payment(:cheese_bacon_burger)}$, but because it is holiday today, you have to pay #{burger2.new_payment(:cheese_bacon_burger)}$. "
	elsif second_order == 'veg_burger'
		puts "Your order is suppose to be #{burger2.payment(:veg_burger)}$, but because it is holiday today, you have to pay #{burger2.new_payment(:veg_burger)}$. "
	elsif second_order == 'chicken_burger'
		puts "Your order is suppose to be #{burger2.payment(:chicken_burger)}$, but because it is holiday today, you have to pay #{burger2.new_payment(:chicken_burger)}$. "
	else
		puts "Your order is not on the menu."
	end
	today_order << burger2
else 
	puts "#{today_order}"
end

puts "Is there third customer coming?(y/n)"
more_customers = gets.chomp.to_s

if more_customers == "n"
	puts "#{today_order}"
elsif more_customers == "y"
	burger3 = Burger.new
	burger3.greeting
	puts "What do you want to order?"
	order = gets.chomp.to_s
	burger3.sold_out(order)
	puts "What do you want to order in the updated menu #{burger.menu}?"
	second_order = gets.chomp.to_s
	if second_order == 'cheese_burger'
		puts "Your order is suppose to be #{burger3.payment(:cheese_burger)}$, but because it is holiday today, you have to pay #{burger3.new_payment(:cheese_burger)}$. "
	elsif second_order == 'cheese_bacon_burger'
		puts "Your order is suppose to be #{burger3.payment(:cheese_bacon_burger)}$, but because it is holiday today, you have to pay #{burger3.new_payment(:cheese_bacon_burger)}$. "
	elsif second_order == 'veg_burger'
		puts "Your order is suppose to be #{burger3.payment(:veg_burger)}$, but because it is holiday today, you have to pay #{burger3.new_payment(:veg_burger)}$. "
	elsif second_order == 'chicken_burger'
		puts "Your order is suppose to be #{burger3.payment(:chicken_burger)}$, but because it is holiday today, you have to pay #{burger3.new_payment(:chicken_burger)}$. "
	else
		puts "Your order is not on the menu."
	end
	today_order << burger3
	puts "#{today_order}"
else 
	puts "#{today_order}"
end


# does a @ is neccessary when there is attr_accessor already?


