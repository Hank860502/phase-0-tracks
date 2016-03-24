puts 'What is your name?'
name = gets.chomp
puts 'How old are you?'
age = gets.chomp.to_i
puts 'Where were you born?'
place = gets.chomp
puts 'Our company cafeteria serves garlic bread. Should we order some for you(y/n)?'
bread = gets.chomp.to_s
y=true
n=false
puts 'Would you like to enroll in the company’s health insurance(y/n)?'
c = gets.chomp

if age < 150 && bread = y #not sure yet
	puts 'Probably not a vampire.'
else
	puts 'You are a vampire!'
end