puts "How many employees will be processed?"
people = gets.chomp.to_i
while people > 0
	puts 'What is your name?'
	name = gets.chomp.to_s
	
	puts 'How old are you?'
	age = gets.chomp.to_i 

	puts 'Which year are you born?'
	year = gets.chomp.to_i
	
	puts 'Our company cafeteria serves garlic bread. Should we order some for you(y/n)?'
	bread = gets.chomp.to_s
	
	puts 'Would you like to enroll in the company’s health insurance(y/n)?'
	insurance = gets.chomp.to_s

	loop do 
		puts 'Name any allergies.(Type done when finish)'
		allergy = gets.chomp.to_s
		if allergy == 'sunshine'
		puts "Probably a vampire"
		break
		elsif allergy == 'done'
		break
		end
		  #condition success but the result will appear twice. For example: Probably a vampire, Results inconclusive.
	end
	if name == "Drake Cula"	|| name == "Tu Fang" 
		puts 'Definitely a vampire'
	elsif age + year != 2016 && (bread == "n" || insurance == "n")
		puts 'Probably a vampire.'
	elsif age + year == 2016 && (bread == "y" || insurance == "y")
		puts 'Probably not a vampire.'
	else 
		puts 'Results inconclusive.'
	end
	people -= 1
end
puts  "Actually, never mind! What do these questions have to do with anything? Let's all be friends."
