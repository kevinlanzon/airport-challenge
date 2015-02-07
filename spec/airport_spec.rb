require 'airport'

describe Airport do

  let(:airport) { Airport.new }
  let(:plane) {double :plane}

  context 'Taking Off and Landing' do

      it 'a plane can land' do
        expect(airport.plane_count).to eq(0)
        airport.land_plane(plane)
        expect(airport.plane_count).to eq(1)
      end

      it 'a plane can take off' do
        airport = Airport.new
        airport.take_off(plane)
        expect(airport.plane_count).to eq(0)
      end
    end

  context 'Air Taffic Control' do

      it 'should know the airport capacity' do
        expect(airport.capacity).to eq(30)
      end

      it 'should know a plane cannot land if the airport is full' do
        airport.capacity.times{airport.land_plane(plane)}
        expect(airport.clear_for_landing).to be(false)
      end
    end

end
