require 'docking_station'

describe DockingStation do

  # Rspec oneliner syntax:
  it {is_expected.to respond_to :release_bike}

  # it 'releases working bike' do
  #   bike = subject.release_bike
  #   expect(bike).to be_working
  # end

  describe '#release_bike' do

    it 'releases a bike' do
      bike = Bike.new
      subject.dock(bike)
      expect(subject.release_bike).to eq bike
    end

    it 'raises an error when there are no bikes available' do
      expect {subject.release_bike}.to raise_error "No bikes available"
    end

  end

  it 'docks something' do
    bike = Bike.new
    #we want to return the bike we dock
    expect(subject.dock(bike)).to eq bike
  end

  it 'returns docked bikes' do
    bike = Bike.new
    subject.dock(bike)
    expect(subject.bike).to eq bike
  end

  describe '#dock' do
    it 'raises an error when the dock is full' do
      # checking an instance of the class i.e. #dock
      subject.dock(Bike.new)
      expect {subject.dock(Bike.new)}.to raise_error 'Docking station is full'
    end
  end
  

end
