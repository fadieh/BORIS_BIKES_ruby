module BikeContainer

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

	def release(bike)
		bikes.pop
	end

	def available_bikes
		bikes.reject { |bike| bike.broken? }
	end

	def broken_bikes
		bikes.select { |bike| bike.broken? }
	end

end