require_relative 'bike_container'
require 'bike'


class Garage

	include BikeContainer

	def initialize(options = {})
		self.capacity = options.fetch(:capacity, capacity)
	end

	def repair_all_broken_bikes
		broken_bikes.each do |broken_bike|
			broken_bike.fix!
		end
	end

	def fix!
		@broken = false
	end

end