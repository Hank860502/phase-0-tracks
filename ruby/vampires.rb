wolves_like_sunshine = true
wolves_like_garlic = true
vampires_like_sunshine = false
vampires_like_garlic = false
puts 'What is your name?'
name = gets.chomp
puts 'How old are you?'
age = gets.chomp
if #{age} > 150
	puts 'You are a vampire!'
else 'You do not look like a vampire.'
end
puts 'Where were you born?'
place = gets.chomp
puts 'Our company cafeteria serves garlic bread. Should we order some for you?'
bread = gets.chomp
puts 'Would you like to enroll in the company’s health insurance?'
prefer = gets.chomp
wolves_like_garlic && wolves_like_sunshine   #true
wolves_like_garlic || vampires_like_garlic	#true
wolves_like_garlic && vampires_like_garlic	#false
wolves_like_garlic && (vampires_like_sunshine || vampires_like_garlic)	#false
(wolves_like_garlic && vampires_like_garlic) || wolves_like_sunshine	#true
vampires_like_garlic	#false
!vampires_like_garlic	#true
!(wolves_like_sunshine && wolves_like_garlic)	#false
