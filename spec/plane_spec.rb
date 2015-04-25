require 'plane'

describe Plane do

  let(:plane)        { Plane.new       }
  let(:landed_plane) { Plane.new.land! }

  it 'is flying when created' do
    expect(plane).to be_flying
  end

  it 'can land' do
    plane.land!
    expect(plane).not_to be_flying
  end

  it 'can take off' do
    expect(landed_plane.take_off!).to be_flying
  end

  it 'changes its status to flying after take off' do
    plane.take_off!
    expect(plane).to be_flying
  end

  it 'has a flying status when in the air' do
    expect(plane).to be_flying
  end
end