require 'van'

describe Van do

	let(:van) { Van.new }
	let(:broken_bike) { double :broken_bike, :broken => true }
	let(:working_bike) { double :bike, :broken => false }

	it "should be initialized with a capacity" do
		expect(van.capacity).to eq 20
	end

	it "should pick up broken bikes" do
		van.dock(broken_bike)
		expect(van.bikes).to eq [broken_bike]
	end

	it "should pick up working bikes" do
		van.dock(working_bike)
		expect(van.bikes).to eq [working_bike]
	end

end