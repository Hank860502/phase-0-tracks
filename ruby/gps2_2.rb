# Method to create a list
# input: 'beef pork lamb'
# steps: 
  # store = user string 
  #store = store.split('')  split string into array
  #store_array = {}   create an empty hash
  #store each do |x|  	iterate through strings in array
  #store_array{store[x]}  store array into hash
  #end
  # set default quantity
  # print the list to the console [can you use one of your other methods here?]
# output: meat = {'beef' => 2, 'pork'=> 1, 'lamb'=>10 }
def first_list(x)
	store = x.split(' ')  #split string into array
	store_hash = {}   #create an empty hash
	store.each do |x|  	#iterate through strings in array
		store_hash[x] = 2
	end
p store_hash
end

p first_list('pork beef lamb')
store_result = first_list('pork beef lamb')

# Method to add an item to a list
# input: add fourth kind of meat 'dog' to list above
# steps: add dog into hash
# output: beef, pork, lamb, dog in an hash!
def add_item(string, value, list)
	list[string] = value
	list
end 
p add_item('dog', 2, store_result)

# Method to remove an item from the list
# input: store_result, beef
# steps: remove beef
# output: pork, lamb, dog
def remove_item(string, list)
	list.delete(string)
	list
end
p remove_item('beef', store_result)

# Method to update the quantity of an item
# input: store_result, dog, 5
# steps: change value of dog
# output: {"beef"=>2, "pork"=>2, "lamb"=>2, "dog"=>5}
def update(string, list, value)
	list[string] = value
	list
end
p update('dog', store_result, 5)

# Method to print a list and make it look pretty
# input: hash
# steps: 
# output: meat = {beef quantity = 2.......}
def pretty(list)
	list.each do |x, y|
		p x+ 'is equal to'+ y.to_s
	end
end
pretty(store_result)

#What did you learn about pseudocode from working on this challenge?
#good pseudocode let me trace back to the code easier and give clear instruction about what will I do.

#What are the tradeoffs of using arrays and hashes for this challenge?
#array is not accepting any value but hash can

#What does a method return?
#it returns the result of argument after the argument has run through the method

#What kind of things can you pass into methods as arguments?
#string, value, operator, variables

#How can you pass information between methods?
#store methods into variables.

#What concepts were solidified in this challenge, and what concepts are still confusing?
#this challenge clarifies how to pass a list between methods. The p statement is still confusing,
#like #{x} doen's work in line 61.