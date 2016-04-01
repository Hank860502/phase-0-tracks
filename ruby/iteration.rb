#dinos = ["T-rex", "brontosaurus", "pterodactyl"
#number_of_dinos = dinos.length
#number_of_dinos.times { |i| puts dinos[i] }

#10.times { |x| puts "we're learning #{x} times!"}

hobbies= ['tennis', 'movies', 'coding', 'cars', '6']
cars = { color: "blue", brand: "subaru", quality: "great", seat: "3"}

hobbies.each do |x|
  puts "I like #{x}"
end

cars.each do |y, z|
  puts "My car is  #{z}"
end
p hobbies
hobbies.map! do |hobby|
  puts hobby
  hobby.reverse
end
p hobbies

hobbies.delete_if{|hobby| hobby.to_i > 5}

p hobbies

#cars.delete_if{|car| car.to_i > 5}

#def condition(hash)
  #if cars[:seat] > 5
    #cars.select
  #end
#end
#p cars
#na = { }
#na[:na] = na
#na[:bat] = :man
#print na[:na][:na][:na][:na][:na][:na][:na][:bat] #hashes can reference and store themselves
# Hello peter
# What are you doing?