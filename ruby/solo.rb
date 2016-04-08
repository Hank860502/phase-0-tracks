#design a class: Travel
#at least three attributes (using at least two data types) 
#whose values will vary from instance to instance (example: age)
#three methods: ______

class Travel
	attr_accessor :places
	def initialize
		p 'I love to travel!'
	end

	def option(place)
		p "I am in the mood to go to #{place} RIGHT NOW!"
	end
#array of places
	def places
		places = ['Taiwan', 'U.S.A', 'London', 'Japan', 'Mexico']
	end

end

travel_agency = Travel.new
travel_agency.option('Taiwan')
travel_agency = places.sample

#does a @ is neccessary when there is attr_accessor already?