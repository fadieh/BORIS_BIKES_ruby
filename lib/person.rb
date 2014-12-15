class Person

	# attr_accessor :bike

	def initialize
		@bike = nil
	end

	def has_bike?
		!@bike.nil?
	end

	def rent_bike_from(station)
		raise PersonAlreadyHasBikeError.new "You have a bike!" if !has_bike
		@bike = station.rent_bike_to_person
	end

	def fall_down
		@bike.break!
	end

end