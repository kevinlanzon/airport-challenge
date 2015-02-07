require 'plane'

describe Plane do

	let(:plane) { Plane.new }

	it 'has a flying status when created' do
		expect(plane.flying?).to be(true)
	end

end
