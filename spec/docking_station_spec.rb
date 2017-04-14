require 'docking_station'

describe DockingStation do
  station = DockingStation.new
  bike = Bike.new

  describe '#release_bike' do
    it 'releases a bike' do
      # bike = Bike.new
      station.dock(bike)
      expect(station.release_bike).to eq bike
    end
    it 'raises an error when there are no bikes available' do
      station.bike = nil
      expect { station.release_bike }.to raise_error 'No bikes available'
    end

    it 'releases working bikes' do
      # bike = Bike.new
       station.dock(bike)
      expect(station.release_bike).to be_working
    end

    it 'responds to release_bike' do
      expect(station).to respond_to :release_bike
    end
  end

  describe '#dock'do
    it { is_expected.to respond_to(:dock).with(1).argument }
    it { is_expected.to respond_to(:bike) }
    it 'docks something' do
      station = DockingStation.new
      expect(station.dock(bike)).to eq bike
    end

    it 'raises an error when the docking station is full' do
       expect { station.dock bike}.to raise_error 'Docking station full'
    end
  end
end
