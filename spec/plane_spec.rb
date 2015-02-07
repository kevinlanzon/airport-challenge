require 'plane'

describe Plane do

  let(:plane) { Plane.new }

  it 'has a flying status when created' do
    expect(plane.status).to eq(true)
  end

  it 'has a flying status when in the air' do
    plane.take_off
    expect(plane.flying?).to be(true)
  end

  it 'can take off' do
    plane.take_off
    expect(plane.take_off).to be(true)
  end

  it 'can land' do
    plane.land?
    expect(plane.land?).to be(true)
  end

end