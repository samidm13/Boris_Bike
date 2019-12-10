require "docking_station"

describe Docking_station do
  describe '#release_bike' do
    it "release bike" do
      bike = Bike.new
      subject.dock(bike)
      expect(subject.release_bike).to eq bike
    end
  end
  describe '#release_bike'do
    it "no bikes available" do
      expect { subject.release_bike }.to raise_error 'No bikes available'
    end
  end
end



  describe Docking_station do
    it "sees bike docked" do
      bike = Bike.new
      expect(subject.dock(bike)).to eq bike
      describe '#dock(bike)' do
        it 'dock full' do
          expect { subject.dock(bike) }.to raise_error 'Dock full!'
        end
      end
    end
  end
