class DockingStation

	DEFAULT = 20

	attr_accessor :capacity

	def initialize(option = {})
		@capacity = option.fetch(:capacity, DEFAULT)
	end

	def capacity
		@capacity ||= DEFAULT
	end 

	def bikes
		@bikes ||= []
	end

	def bike_count
		bikes.count
	end

	def dock(bike)
		bikes << bike
	end

end