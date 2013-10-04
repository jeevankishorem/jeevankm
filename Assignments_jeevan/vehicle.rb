#Create a class Vehicle and initailize it with no. of wheels,
#color, price, brand. Create other classes like Bike, Car, Bus which should inherit from Vehical class.
#Also create a module method which will be used inside Vehical class,
#then further using inheritence by its sub-classes.

require "./vehicle_display"
class Vehicle
	attr_accessor :no_of_wheels, :colour, :price, :brand
	
	include Vehicle_disp

	def initialize(no_of_wheels,colour,price,brand)
	@no_of_wheels=Integer(no_of_wheels)
	@colour=colour
	@price=Integer(price)
	@brand=brand
	end

	def display()
		vehicle_display(@no_of_wheels,@colour,@price,@brand)
	end

end

class Car < Vehicle

	attr_accessor :no_of_wheels, :colour, :price,:brand, :is_itAC
	
	def initialize(no_of_wheels,colour,price,brand,is_itAC)
		super(no_of_wheels,colour,price,brand)
		@is_itAC=is_itAC
	end

	def display()
		print(super)
		puts "#{@is_itAC}"
	end
end

class Bike < Vehicle

	attr_accessor :no_of_wheels, :colour, :price,:brand, :type_of_bike

	def initialize(no_of_wheels,colour,price,brand,type_of_bike)
		super(no_of_wheels,colour,price,brand)
		@type_of_bike=type_of_bike
	end

	def display()
		print(super)
		puts "#{@type_of_bike}"
	end
end

class Bus < Vehicle

	attr_accessor :no_of_wheels, :colour, :price,:brand, :bus_load_capacity

	def initialize(no_of_wheels,colour,price,brand,bus_load_capacity)
		super(no_of_wheels,colour,price,brand)
		@bus_load_capacity=bus_load_capacity
	end

	def display()
		print(super)
		puts "#{@bus_load_capacity}"
	end
end

aVehicle=Vehicle.new(2,"red",50000,"bajaj")

aCar=Car.new(4,"green",500000,"maruthi",true)

aVehicle.display()
aCar.display()

aBike=Bike.new(2,"yellow",50000,"bajaj","sports bike")
aBike.display()

aBus=Bus.new(2,"yellow",50000,"bajaj",40)
aBus.display()