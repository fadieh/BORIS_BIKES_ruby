require 'person'

describe Person do

	let(:person) { Person.new }
	let(:bike) { double :bike }

	it "should initially have no bike" do
		expect(person).to_not have_bike
	end

	it "should be able to get a bike" do
		person.rent_bike
		expect(person.bike).to eq true
	end

	it "should dock a bike" do
		person.rent_bike
		person.dock_bike
		expect(person.bike).to eq false
	end

end