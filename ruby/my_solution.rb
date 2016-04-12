# Virus Predictor

# I worked on this challenge [by myself, with:  Caitlyn Yu].
# We spent [1] hours on this challenge.

# EXPLANATION OF require_relative
# make state_data accessible for my_solution.rb
# (require needs full detail of location)
require_relative 'state_data'

class VirusPredictor
    #initialize takes three variables
  def initialize(state_of_origin, population_density, population)
    @state = state_of_origin
    @population = population
    @population_density = population_density
  end
# calls predict_deaths and speed_of_spread
  def virus_effects
    predicted_deaths
    speed_of_spread
  end

  private
  #prints people might die based on three variables
  def predicted_deaths
    case @population_density
    # predicted deaths is solely based on population density
    when @population_density >= 200
      number_of_deaths = (@population * 0.4).floor
    when @population_density >= 150
      number_of_deaths = (@population * 0.3).floor
    when @population_density >= 100
      number_of_deaths = (@population * 0.2).floor
    when @population_density >= 50
      number_of_deaths = (@population * 0.1).floor
    else
      number_of_deaths = (@population * 0.05).floor
    end

    print "#{@state} will lose #{number_of_deaths} people in this outbreak"

  end
  #print months to take the virus to spread base on teo variables
  def speed_of_spread #in months
    # We are still perfecting our formula here. The speed is also affected
    # by additional factors we haven't added into this functionality.
    speed = 0.0
    case @population_density
    when @population_density >= 200
      speed += 0.5
    when @population_density >= 150
      speed += 1
    when @population_density >= 100
      speed += 1.5
    when @population_density >= 50
      speed += 2
    else
      speed += 2.5
    end

    puts " and will spread across the state in #{speed} months.\n\n"

  end

end

#=======================================================================

# DRIVER CODE
 # initialize VirusPredictor for each state
STATE_DATA.each do |state, data_hash|
  state = VirusPredictor.new(state, data_hash[:population_density], data_hash[:population])
  state.virus_effects
end
# alabama = VirusPredictor.new("Alabama", STATE_DATA["Alabama"][:population_density], STATE_DATA["Alabama"][:population])
# alabama.virus_effects

# jersey = VirusPredictor.new("New Jersey", STATE_DATA["New Jersey"][:population_density], STATE_DATA["New Jersey"][:population])
# jersey.virus_effects

# california = VirusPredictor.new("California", STATE_DATA["California"][:population_density], STATE_DATA["California"][:population])
# california.virus_effects

# alaska = VirusPredictor.new("Alaska", STATE_DATA["Alaska"][:population_density], STATE_DATA["Alaska"][:population])
# alaska.virus_effects


#=======================================================================
# Reflection Section
# What are the differences between the two different hash syntaxes shown in the state_data file?
# the key of the outer hash is a string, which relate to its value by rocket arrow and the key of the inner hash is a symbol
# What does require_relative do? How is it different from require?
# make state_data accessible for my_solution.rb (require needs full detail of location, require_relative worls fine when both files are in the same directory.)
# What are some ways to iterate through a hash?
# iterate through the key and value by using each do statement
# When refactoring virus_effects, what stood out to you about the variables, if anything?
# when the method knows where the variables is, like instance variables, the method doesn't needs to take arguments.
# What concept did you most solidify in this challenge?
# how to make my code look dryer and how to use iterator.