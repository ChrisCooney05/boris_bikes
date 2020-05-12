require 'DockingStation'

describe DockingStation do

  it 'respond to release bike' do
    expect(DockingStation.new).to respond_to(:release_bike)
  end

  it 'respond to release bike' do
    expect(DockingStation.new.release_bike).to be_an_instance_of(Bike)
  end

end
