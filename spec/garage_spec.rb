require 'garage'
require 'bike_container'

describe Garage do

	let(:garage) { Garage.new }
	let(:bike) { double :bike, :broken => false }
	let(:broken_bike) { double :bike, :broken => true }
	let(:van) { double :van, {:bikes => [bike, broken_bike]}}

	def repair()
		@broken = false
	end

	it "should be able to dock broken bikes" do
		garage.dock(broken_bike)
		expect(garage.bikes).to eq [broken_bike]
	end

	it "should be initialized with a capacity" do
		expect(garage.capacity).to eq 20
	end

	it "should be able fix bikes" do
		garage.dock(broken_bike)
		garage.repair_all_broken_bikes
		expect(broken_bike).to receive(:fix!)
	end

end