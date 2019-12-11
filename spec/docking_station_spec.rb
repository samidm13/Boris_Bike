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
      expect(subject.dock(bike)).to eq [bike]
    end

    describe '#dock' do
      it 'dock full' do
        subject.capacity.times { subject.dock(Bike.new) }
        expect { subject.dock Bike.new }.to raise_error 'Dock full!'
      end
    end
  end

  describe Docking_station do
  it "set at capacity instance variable" do
    expect(subject.capacity).to eq Docking_station::DEFAULT_CAPACITY
    end
  end

 describe 'initialization' do
   subject { Docking_station.new }
   let(:bike) { Bike.new }
   it 'defaults capacity' do
    Docking_station::DEFAULT_CAPACITY.times do
       subject.dock(bike)
     end
     expect { subject.dock(bike) }.to raise_error 'Dock full!'
   end
 end
