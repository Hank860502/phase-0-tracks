class Santa
  attr_accessor :name, :age, :gender, :ethnicity, :size
  def speak(x)
    puts "Ho, ho, ho! Haaaappy holidays!"
  end
  #speak('x')
  
  def eat_milk_and_cookies(cookie)
    p "That was a good #{cookie}!" 
  end
  #eat_milk_and_cookies('oreo')
#
  def initialize(gender, ethnicity, size, name)
    puts "Initializing Santa instance ..."
    @age = 0
    @reindeer_ranking = ["Rudolph", "Dasher", "Dancer", "Prancer", "Vixen", "Comet", "Cupid", "Donner", "Blitzen"]
    @gender = gender
    @ethnicity = ethnicity
    @size = size
    @name = name
  end
#testing output
  #def test(test)
  #  puts '#{@name} is #{@gender} and is #{@size}'
  #end

#setter method for age
  def celebrate_birthday
    @age +=1
  end
  
#getter method for array
  def reindeer_ranking
    @reindeer_ranking
  end

  def get_mad_at=(reindeer_name)
    @reindeer_ranking = @reindeer_ranking.insert(-1, reindeer_ranking.delete_at(reindeer_ranking.index(reindeer_name)))
  end
  
  def print_santa
    puts 'My name is '+ name + '. My preference of gender is ' + gender + '; I am '+ ethnicity + ', and I am ' + age.to_s + ' years old now.' + ' By the way, I would like a Santa costume in ' + size + ' size!'
  end
  
end
santas = []
# santas << Santa.new("agender", "black", 'medium', 'James')
# santas << Santa.new("female", "Latino", 'large', 'Jen')
# santas << Santa.new("bigender", "white",'medium', 'Alex')
# santas << Santa.new("male", "Japanese", 'small', 'Marvin')
# santas << Santa.new("female", "prefer not to say", 'small', 'Peter')
# santas << Santa.new("gender fluid", "Mystical Creature (unicorn)",'medium', 'Richard')
# santas << Santa.new("N/A", "N/A", 'large', 'Claire')
#random = santas.sample
santas = Santa.new('Male', 'Asian', 'large', 'Hank')
#puts santas.gender   #testing getter method
#puts santas.ethnicity #testing
santas.celebrate_birthday#
santas.age = rand(1..140)  #random age
# puts 'My name is '+ santas.name + '. My preference of gender is ' + santas.gender + '; I am '+ santas.ethnicity + ', and I am ' + santas.age.to_s + ' years old now.' + ' By the way, I would like a Santa costume in ' + santas.size + ' size!' #testing changing attribute.
santas.print_santa
santas.get_mad_at = 'Vixen'
p santas.reindeer_ranking
#random array example
genders = ["agender", "female", "bigender", "male", "female", "gender fluid", "N/A"]
ethnicities = ["black", "Latino", "white", "Japanese-African", "prefer not to say", "Mystical Creature (unicorn)", "N/A"]
size = ['medium', 'large', 'small']
name = ['James', 'Jen', 'Alex', 'Marvin', 'Peter', 'Richard', 'Claire']

new_santa = Santa.new(genders.sample, ethnicities.sample, size.sample, name.sample)   #random samples
new_santa.age = rand(0..140)  #random age
new_santa.print_santa  	#print the new_santa using random attributes.
#fail to call variable like #{santas.age} and get_mad_at error