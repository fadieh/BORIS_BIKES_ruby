class Person

	attr_accessor :bike

	def initialize
		@bike = nil
	end

	def has_bike?
		!@bike.nil?
	end

	def rent_bike
		@bike = true
	end

	def fall_down
		@bike.break!
	end

end