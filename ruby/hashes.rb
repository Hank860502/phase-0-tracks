#Ask for the client's name, age, number of children, decor theme type.
#store each user input and make a hash to organize the client information.
#print client information in hash.
#Ask for any update, if no update requested, end. Elsif update is requested, update the hash and print new client hash.
client= {:name => "", :age => "", :number_of_children => "", :decor_theme_Halloween => "", :decor_theme_Christmas => ""}
puts "Client name"
name = gets.chomp
client[:name] = name
puts "Client age"
age = gets.chomp.to_i
client[:age] = age
puts 'Number of children client has'
number = gets.chomp.to_i
client[:number_of_children] = number
puts "decor_theme_Halloween? (y/n)"
halloween = gets.chomp
if halloween == 'n'
  halloween = false
elsif halloween == 'y'
  halloween = true
end
client[:decor_theme_Halloween] = halloween
puts 'decor_theme_Christmas? (y/n)'
christmas = gets.chomp
if christmas == 'n'
  christmas = false
elsif christmas == 'y'
  christmas = true
end
client[:decor_theme_Christmas] = christmas
p client
puts "Data type you want to update.(none/name/age/number/decor_theme_Halloween/decor_theme_Christmas)"
update = gets.chomp
if update =='none'
elsif update == 'name'
  puts "Enter new name."
  new_name = gets.chomp
  client[:name] = new_name
elsif update == 'age'
  puts "Enter new age."
  new_age = gets.chomp.to_i
  client[:age] = new_age
elsif update == 'number'
  puts "Enter new number_of_children."
  new_number = gets.chomp.to_i
  client[:number_of_children] = new_number
elsif update == 'decor_theme_Halloween'
  puts "Enter new preference."
  new_decor_theme_Halloween = gets.chomp
  	if new_decor_theme_Halloween == 'n'
  	new_decor_theme_Halloween = false
	elsif new_decor_theme_Halloween == 'y'
  	new_decor_theme_Halloween = true
	end	#I thought we can't use a if statement inside a if statement, but it works here without ending it early.
  client[:decor_theme_Halloween] = new_decor_theme_Halloween
 elsif update == 'decor_theme_Christmas'
  puts "Enter new preference."
  new_decor_theme_Christmas = gets.chomp
  	if new_decor_theme_Christmas == 'n'
  	new_decor_theme_Christmas = false
	elsif new_decor_theme_Christmas == 'y'
  	new_decor_theme_Christmas = true
	end
  client[:decor_theme_Christmas] = new_decor_theme_Christmas
end

p client