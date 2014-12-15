require 'person'

describe Person do

	let(:person) { Person.new }
	let(:bike) { double :bike }
	let(:station) { double :station }

	it "should initially have no bike" do
		expect(person).to_not have_bike
	end

	it "should be able to get a bike" do
		person.rent_bike_from(station)
	end

	it "should be able to return a bike" do

	end

end