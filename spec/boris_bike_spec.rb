require 'DockingStation'

describe DockingStation do

  it 'respond to release bike' do
    expect(DockingStation.new).to respond_to(:release_bike)
  end

end
