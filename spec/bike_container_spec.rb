require 'bike_container'

	class BikeHolder; include BikeContainer; end

	describe BikeContainer do

	let(:bikeholder) { BikeHolder.new }
	let(:bike) { double :bike, :broken? => false }
	let(:broken_bike) { double :bike, :broken? => true }

	it "should have a default capacity" do
		holder = BikeHolder.new
		expect(bikeholder.capacity).to eq(20)
	end

	it "should have initially have no bikes" do
		expect(bikeholder.bike_count).to eq 0
		bikeholder.dock(bike)
		expect(bikeholder.bike_count).to eq 1

	end

	it "should know the total amount of bikes" do
		expect{bikeholder.dock(bike)}.to change{bikeholder.bike_count}.by 1
	end

	it "should be able to dock a bike" do
		expect(bikeholder.dock(bike)).to include(bike)
	end

	it "should be able to release a bike" do
		bikeholder.dock(bike)
		bikeholder.release(bike)
		expect(bikeholder.bikes).to_not include(bike)
	end

	it "should know how many broken bikes there are" do
		bikeholder.dock(broken_bike)
		expect(bikeholder.broken_bikes).to include(broken_bike)
	end

	it "should know how many available bikes there are" do
		bikeholder.dock(bike)
		expect(bikeholder.available_bikes).to include(bike)
	end

end