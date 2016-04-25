# create a airport controller
# planes from different airlines land at the airport
# each plane have different amount of passenger
# each plane have different amount of flying attendant
# store the information of each flight info
# depends on whether or not the plane landed, amount of passengers on the plane varies.

require 'sqlite3'
require 'faker'

#create database of airport controller from taiwan
#plane flying from taiwan => san fransisco

db = SQLite3::Database.new("controller.db")
db.results_as_hash = true

create_table_cmd = <<-SQL
	CREATE TABLE IF NOT EXISTS controller(
	id INTEGER PRIMARY KEY,
	plane VARCHAR(255),
	passengers INT,
	flying_attendant INT,
	)
SQL

# db.execute(create_table_cmd)  this code makes some error, couldn't find how

def fly_in(db, plane, passengers, flying_attendant)
  db.execute("INSERT INTO controller (plane, passengers, flying_attendant) VALUES (?, ?, ?)", [plane, passengers, flying_attendant])
end


def fly_away(db, plane)
  db.execute("UPDATE controller SET passengers=0 WHERE plane=?",[plane])
end

loop do 
	puts "Is there any flight coming to San Fransisco?(y/n)"
	coming= gets.chomp.downcase

	break if coming == "n"

	if coming == "y"
		puts "Require flight information. (recieved plane's name)"
	information_plane = gets.chomp.to_s
	puts "Require flight information. (recieved passangers amount)"
	information_passangers = gets.chomp.to_i
	puts "Require flight information. (recieved flying attendants amount)"
	information_attendants = gets.chomp.to_i
	fly_in(db, information_plane, information_passangers, information_attendants)	
	puts "This flight stopping by in NASA is flying with #{information_plane}, which contains #{information_passangers} passengers and #{information_attendants} flying attendants."
	else puts "wrong answer."
	end

	puts "Did the plane landed yet? (y/n)"
	land = gets.chomp
	if land == "n"
		puts "Passengers remain to seats and fasten you seat belt."
	elsif land == "y"
		puts "Passengers left the plane."
		fly_away(db, information_plane)
	end
end



