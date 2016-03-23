wolves_like_sunshine = true
wolves_like_garlic = true
vampires_like_sunshine = false
vampires_like_garlic = false
puts 'What is your name?'
name = gets.chomp
puts 'How old are you?'
age = gets.chomp
if age > 150
	puts 'You are a vampire!'
else 'You do not look like a vampire.'
end
puts 'Where were you born?'
place = gets.chomp
if place 
puts 'Our company cafeteria serves garlic bread. Should we order some for you?'
bread = gets.chomp
puts 'Would you like to enroll in the company’s health insurance?'
prefer = gets.chomp