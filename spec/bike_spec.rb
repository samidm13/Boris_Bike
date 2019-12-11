require "docking_station"

describe Bike do
it 'checks the bike is working' do
  bike = Bike.new
  expect(bike).to respond_to(:working?)
end
# { is_expected.to respond_to(:working?) }
end
