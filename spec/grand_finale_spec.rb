require 'airport'
require 'plane'
require 'weather'

describe 'The Grand Finale Spec (last spec)' do

  let(:airport) { Airport.new }
  let(:planes) {6.times.collect { Plane.new }}

  it 'all planes can land and all planes can take off' do
    allow(airport.stormy?).to receive(:stormy?) {"The weather is sunny today"}
  end

end

# grand final
# Given 6 planes, each plane must land. When the airport is full, every plane must take off again.
# Be careful of the weather, it could be stormy!
# Check when all the planes have landed that they have the right status "landed"
# Once all the planes are in the air again, check that they have the status of flying!
