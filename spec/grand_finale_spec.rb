require 'airport'
require 'plane'
require 'weather'

  def all_planes_take_off!
    planes.each {|plane| plane.take_off!}
  end

  def land_all_planes!
    planes.each {|plane| plane.land!}
  end

describe 'the grand finale spec' do

  let(:luton) { Airport.new }
  let(:planes) {6.times.collect { Plane.new }}

  it '6 planes can take off' do
  allow(luton).to receive(:stormy?) {"The weather is sunny today"}
  all_planes_take_off!
  planes.each { |plane| expect(plane).to be_flying }
  end

  it '6 planes can land' do
  allow(luton).to receive(:stormy?) {"The weather is sunny today"}
  land_all_planes!
  planes.each { |plane| expect(plane).not_to be_flying }
  end

end


# # grand final
# # Given 6 planes, each plane must land. When the airport is full, every plane must take off again.
# # Be careful of the weather, it could be stormy!
# # Check when all the planes have landed that they have the right status "landed"
# # Once all the planes are in the air again, check that they have the status of flying!
