# create a airport controller
# planes from different airlines land at the airport
# each plane have different amount of passenger
# each plane have different amount of flying attendant
# 

require 'sqlite3'
require 'faker'

#create database of airport controller from taiwan
#plane flying from taiwan => san fransisco

taiwan = SQLite3::Database.new("controller.db")
taiwan.results_as_hash = true

create_table_cmd = <<-SQL
	CREATE TABLE IF NOT EXISTS controller(
	id INTEGER PRIMARY KEY,
	plane VARCHAR(255),
	passengers INT,
	flying_attendant INT,
	)
SQL

#create database of airport controller base in san fransisco

san_fransisco = SQLite3::Database.new("base.db")
san_fransisco.results_as_hash = true

create_table_cmd2 = <<-SQL
CREATE TABLE IF NOT EXISTS base(
	id INTEGER PRIMARY KEY,
	recieve_plane VARCHAR(255),
	recieve_passangers INT,
	recieve_flying_attendant INT,
	)
SQL


taiwan.execute(create_table_cmd)

def fly_in(db, plane, passengers, flying_attendant)
  taiwan.execute("INSERT INTO taiwan (plane, passengers, flying_attendant) VALUES (?, ?, ?)", [plane, passengers, flying_attendant])
end


def base_controll(db, plane, passengers, flying_attendant)
	san_fransisco.execute("INSERT INTO san_fransisco (recieve_plane, recieve_passangers, recieve_flying_attendant) VALUES (?, ?, ?)", [recieve_plane, recieve_passangers, recieve_flying_attendant])
end





