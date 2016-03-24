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

if age < 150 && (bread == "y" || c == "y")  #not sure yet
	puts 'Probably not a vampire.'
elsif age > 150 && (bread == "n" || c == "n") 	#not sure yet
	puts 'Probably a vampire.'
else 
	puts 'Results inconclusive.'
end
