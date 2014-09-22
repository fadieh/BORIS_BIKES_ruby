require 'docking_station'

describe DockingStation do

	let(:station) { DockingStation.new }
	let(:bike) { double :bike }

	it "should have a default capacity" do
		docking = DockingStation.new
		expect(station.capacity).to eq(20)
	end

	it "should have initially have no bikes" do
		expect(station.bike_count).to eq 0
		station.dock(bike)
		expect(station.bike_count).to eq 1

	end

	it "should be able to count bikes" do
		expect{station.dock(bike)}.to change{station.bike_count}.by 1
	end

	it "should be able to dock a bike" do
		expect(station.dock(bike)).to include(bike)
	end




end