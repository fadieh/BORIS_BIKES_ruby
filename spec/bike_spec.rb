require 'Bike'

describe Bike do

	let(:bike) { Bike.new }

	it "should initially be working" do
		bike.broken?
		expect(bike).to_not be_broken
	end

	it "should be able to break" do
		bike.break!
		expect(bike).to be_broken
	end

	it "should be able to get fixed" do
		bike.break!
		bike.fix!
		expect(bike).to_not be_broken
	end

end