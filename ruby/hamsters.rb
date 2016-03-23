puts "What is the hamster's name?"
name = gets.chomp
name.to_s
puts "You need #{name}"
puts "How loud is the hamster is? From 1-10."
volume = gets.chomp
volume.to_i
puts "Hamster volume is #{volume}"
puts "What is the hamster's fur color?"
color = gets.chomp
puts "The hamster's fur color is #{color}"
puts "Is the hamster is a good candidate for adoption(x/o)?"
adoption = gets.chomp
x = false
o = true
if adoption = x
	puts "I think it is fine."
elsif adoption = o
	puts "You can take it with you."
		end 
puts "Estimated age?"
age = gets.chomp
puts "#{age} is quite young!"
