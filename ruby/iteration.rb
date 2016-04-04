def test_method 
  puts "Hello, nice to meet you!"
  yield("Doug", "Hank")
end

test_method {|name1, name2| puts "#{name1} and #{name2}"}

hobbies= ['tennis', 'movies', 'coding', 'cars', "balls9", "basketballs16", "balls8"]  #9balls.to_i = 9 but after reverse, sllab9=0. 
cars = { color: "blue", brand: "subaru", seat: "6", people: "3"}

hobbies.each do |x|
  puts "I like #{x}"
end

cars.each do |y, z|
  puts "My car is  #{z}"
end
hobbies.map! do |hobby|
  p hobby.reverse
end

p hobbies.keep_if{|hobby| hobby.to_i > 0}   #assignment2

p cars.keep_if{|car_specs_key, car_specs_value|  car_specs_value.to_i > 0}  #exclude string.to_i = 0

p hobbies.select {|hobby| hobby.to_i > 3}  #assignment3

p hobbies.drop_while {|hobby| hobby.to_i < 10}
p hobbies.delete_if{|hobby| hobby.to_i > 8}   #assignment1! delete_if is destructive so I move it to the bottom.
p cars.delete_if{|car_specs_key, car_specs_value| car_specs_value.to_i > 5}  #assignment1! delete_if is destructive so I move it to the bottom.


#A method that will remove items from a data structure until the condition in the block evaluates to false, then stops.










