require 'airport'

describe Airport do
  let(:airport) { Airport.new }
  let(:plane) {double :plane}


  context 'taking off and landing' do

      it 'a plane can land' do
        expect(airport.land_plane).to be(true)
      end

      it 'a plane can take off' do
        airport.take_off
        expect(airport.take_off).to be(true)
      end

  end
end