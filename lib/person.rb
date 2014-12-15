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

	def dock_bike
		@bike = false
	end

	def fall_down
		@bike.break!
	end

end