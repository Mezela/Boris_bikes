require 'docking_station'

describe DockingStation do
  # it 'responds to release_bike' do
  #   expect(subject).to respond_to :release_bike
  # end

  # Rspec oneliner syntax:
  it {is_expected.to respond_to :release_bike}
end
