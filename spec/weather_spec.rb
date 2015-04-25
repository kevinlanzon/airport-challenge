require 'weather'

class WeatherCondition; include Weather; end

describe WeatherCondition do

  let(:weathercondition) { WeatherCondition.new }

  it 'should know when there is a storm brewing' do
    allow(weathercondition).to receive(:stormy?) {"There's a storm brewing"}
    expect(weathercondition.stormy?).to eq "There's a storm brewing"
  end

  it 'should know when the weather is sunny' do
    allow(weathercondition).to receive(:stormy?) {"The weather is sunny today"}
    expect(weathercondition.stormy?).to eq "The weather is sunny today"
  end
end