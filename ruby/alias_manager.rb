#Ask the user first name and last name. 
#swap the first name and the last name
#change all the vowels in the name to next vowel 
#change all of the consonants (everything else besides the vowels) to the next consonant in the alphabet.
user_info = {}
def vowel_machine(var) #drag this method out loop
	name = ''  #loop through word by word.
	count = 0 
	vowel = "aeiouAEIOU"
	full = "bcdfghjklmnpqrstvwxyzBCDFGHJKLMNPQRSTVWXYZ"  #alphabet without aeiou 
	while count < var.length
		if var[count] == ' '
			name << ' '
		elsif var[count] == 'u'
			name << 'a'  ##if this code is missing, u will not have a next value.
		elsif var[count] == 'U'
			name << 'A'  ##if this code is missing, U will not have a next value.
		elsif var[count] == 'a' || var[count] == 'e' || var[count] == 'i' || var[count] == 'o' || var[count] == 'u' || var[count] == 'A' || var[count] == 'E' || var[count] == 'I' || var[count] == 'O' || var[count] == 'U' 
			name << vowel[vowel.index(var[count])+1]
		elsif var[count] == 'z'   #if this code is missing, z will not have a next value.
			name << 'b'
		elsif var[count] == 'Z'   #if this code is missing, Z will not have a next value.
			name << 'B'
		else name << full[full.index(var[count])+1]  #any word except z, .next and skip the vowels
		end
		count+=1
	end
	return name
end



loop do 
	puts 'What is your first name?'
	user_first_name = gets.chomp.to_s
	break if user_first_name == 'quit'
	puts 'What is your last name?'
	user_last_name = gets.chomp.to_s
	break if user_last_name == 'quit'
	user_real_name = user_first_name + ' ' + user_last_name  #store real name
	store = user_real_name
	user_name = user_last_name + ' ' + user_first_name  #to swap forst and last name
	#user_name = user_name.split(' ') #this provide an array : ["Hank", "Chen"] so I can swap them. But terminal display method + doe not exist so I go another way.
	#first_name = user_name[0]
	#last_name = user_name[-1]
	#user_name[0] = last_name
	#user_name[-1] = first_name
	p vowel_machine(user_name)
	store_result = vowel_machine(user_name)
	puts 'To exit, type quit.'
	user_info.store(store, store_result) #this will return a new hash pair but only one.
	#p user_info
	#puts "#{store_result} is acually #{store}!" will success here but display everytime a user type name.
	#count = 0 #index
	#user_info[:real_name].push(user_real_name)   #store real name to the data structure.
	#store = user_info[:real_name]
	#user_info[:fake_name].push(store_result)
	#p user_info
end

user_info.each do |key, value|
	puts "#{value} is actually #{key}"
end

#def print_result(x)
#	count = 0
#p user_info[:] is actually user_info[:][count]
#count+=1
#end
#p print_result
#puts "#{store_result} is acually #{user_real_name}"
#user_info = user_info.new {|hash, key| hash[key] = "#{store_result} is actually #{user_real_name}"} new not defined

	#puts "#{store_result} is acually #{store}!" does not have the value of fake_name and real_name




