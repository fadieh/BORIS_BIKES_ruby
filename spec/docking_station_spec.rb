require 'docking_station'

describe DockingStation do

	let(:station) { DockingStation.new }
	let(:bike) { double :bike, :broken? => false }
	let(:broken_bike) { double :bike, :broken? => true }

	it "should have a default capacity" do
		docking = DockingStation.new
		expect(station.capacity).to eq(20)
	end

end