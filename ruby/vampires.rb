puts "How many employees will be processed?"
people = gets.chomp.to_i
while people > 0
	puts 'What is your name?'
	name = gets.chomp.to_s
	
	puts 'How old are you?'
	age = gets.chomp.to_i
	
	puts 'Where were you born?'
	place = gets.chomp
	
	puts 'Our company cafeteria serves garlic bread. Should we order some for you(y/n)?'
	bread = gets.chomp.to_s
	
	puts 'Would you like to enroll in the company’s health insurance(y/n)?'
	c = gets.chomp.to_s

	loop do 
		puts 'Name any allergies.(Type done when finish)'
		allergy = gets.chomp.to_s
		if allergy == 'sunshine'
		puts 'Probably a vampire.'
		end
		break if allergy == 'sunshine' or allergy == 'done'  #condition success but the result will appear twice. For example: Probably a vampire, Results inconclusive.
	end
	if name == "Drake Cula"	#warning appear when combine two name condition together
		puts 'Definitely a vampire'
	elsif name == "Tu Fang"	#warning appear when combine two name condition together
		puts 'Definitely a vampire'
	elsif age > 150 && (bread == "n" || c == "n") 	#not sure yet
		puts 'Probably a vampire.'
	elsif age < 150 && (bread == "y" || c == "y")  #not sure yet
		puts 'Probably not a vampire.'
	else 
		puts 'Results inconclusive.'
	end
	people -= 1
end
puts  "Actually, never mind! What do these questions have to do with anything? Let's all be friends."
