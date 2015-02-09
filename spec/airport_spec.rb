require 'airport'

describe Airport do

  let(:luton) { Airport.new   }
  let(:plane) { double :plane }

  context 'when created' do

    it 'has no planes' do
      expect(luton.plane_count).to eq 0
    end

    it 'has a default capacity' do
      expect(luton.capacity).to eq Airport::DEFAULT_CAPACITY
    end
  end

  context 'can let a plane take off and land' do

    it 'a plane can land' do
      allow(plane).to receive(:land!)
      plane.land!
      luton.park(plane)
    end

    it 'accounts for that plane after landing' do
      allow(plane).to receive(:land!)
      luton.park(plane)
      expect(luton.plane_count).to eq 1
    end

    it 'a plane can take off' do
      allow(plane).to receive(:take_off!)
      plane.take_off!
      expect(luton.plane_count).to eq 0
    end
  end

    context 'Air Taffic Control' do

      it 'should know the airport capacity' do
        expect(luton.capacity).to eq 20
      end
  end

end