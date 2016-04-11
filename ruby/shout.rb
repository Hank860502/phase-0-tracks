#  # we'll put some methods here soon, but this code is fine for now!
# module Shout
# 	def self.yell_angrily(words)
#     p words + "!!!" + " :("
# 	end

# 	def self.yelling_happily(words)
#     p "Ya!" + words + " :)"
# 	end
# end

# Shout.yell_angrily('NO')
# Shout.yelling_happily('Yo')

module Shout
	def noun(name)
		puts "#{name} shouts loudily."
	end
end
class People
	include Shout
end

class Animal
	include Shout
end

person = People.new
person.noun('Hank')

little_animal = Animal.new
little_animal.noun('dog')
