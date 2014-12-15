require_relative 'bike_container'

class DockingStation

	include BikeContainer

	def rent_bike_to_person
		@bikes.pop
	end

end