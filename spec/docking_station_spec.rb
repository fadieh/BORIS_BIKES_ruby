require 'docking_station'

describe DockingStation do

	let(:station) { DockingStation.new }
	let(:bike) { double :bike, :broken? => false }
	let(:broken_bike) { double :bike, :broken? => true }

	it "should have a default capacity" do
		docking = DockingStation.new
		expect(station.capacity).to eq(20)
	end

	it "should have initially have no bikes" do
		expect(station.bike_count).to eq 0
		station.dock(bike)
		expect(station.bike_count).to eq 1

	end

	it "should know the total amount of bikes" do
		expect{station.dock(bike)}.to change{station.bike_count}.by 1
	end

	it "should be able to dock a bike" do
		expect(station.dock(bike)).to include(bike)
	end

	it "should be able to release a bike" do
		station.dock(bike)
		station.release(bike)
		expect(station.bikes).to_not include(bike)
	end

	it "should know how many broken bikes there are" do
		station.dock(broken_bike)
		expect(station.broken_bikes).to include(broken_bike)
	end

	it "should know how many available bikes there are" do
		station.dock(bike)
		expect(station.available_bikes).to include(bike)
	end

end