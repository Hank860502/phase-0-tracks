


class Puppy

  def fetch(toy)
    puts "I brought back the #{toy}!"
    toy
  end
  
  def speak(n)
    puts "Woof!" * n
  end
  
  def roll_over
    puts "*rolls over*"
  end
  
  def dog_years(n)
    p n*7
  end

  def nickname(name)
    p name + "dog"
  end
  
  def initialize
    p "Initializing new puppy instance ..."
  end
  
end

puppies = Puppy.new
puppies.fetch('bone')
puppies.speak(3)
puppies.roll_over
puppies.dog_years(3)
puppies.nickname("Hank")

#create class Pair
#initialize it
#creat two method with arguments


class Pair
  
  def initialize
    p 'We are pairing'
  end
   
  def highfive(name1, name2)
    p "#{name1} highfive with #{name2}"
  end
    
  def eating(food)
    p "I am eating #{food}"
  end
end

pairs = Pair.new
pairs.highfive('Hank', 'Will')
pairs.eating('icecream')

 array = []
 count = 0
 while count < 50
 dbc = Pair.new
   array.push(dbc)
 count += 1
 end

array.each do |dbc|
  dbc.highfive('Hank', 'Will')
  dbc.eating('burger')
  
end