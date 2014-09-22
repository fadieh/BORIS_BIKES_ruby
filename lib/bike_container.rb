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
		# it should release the bike that's passed as the argument
		bikes.delete(bike)
	end

	def available_bikes
		bikes.reject { |bike| bike.broken? }
	end

	def broken_bikes
		bikes.select { |bike| bike.broken? }
	end

	# EXTRA METHODS

	def release_available
		bikes.delete(available_bikes.pop)
	end

	def release_broken
		bikes.delete(broken_bikes.pop)
	end

end