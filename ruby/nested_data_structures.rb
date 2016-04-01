#A highway full of cars and people.
highway={ 
	cars: {brand_of_cars: ['Benz', 'BMW', 'Toyota'], 
		number_of_cars: 2500, 
		people: 2680},
	bus: {brand_of_bus: ['Subaru', 'Yamaha'], 
		number_of_bus: 20, 
		people: 200},
	others: {number_of_others: 120,
		people: 480}
}
p highway[:cars][:number_of_cars]
p highway[:bus][:brand_of_bus][1]
p highway[:others][:people]