require 'DockingStation'

describe DockingStation do

  it 'respond to release bike' do
    expect(DockingStation.new).to respond_to(:release_bike)
  end

  #it 'respond to release bike' do
  #  expect(DockingStation.new.release_bike).to be_an_instance_of(Bike)
  #end

  it 'responds to docking' do
    expect(DockingStation.new).to respond_to(:docking)
  end

  it 'reponds to docking with one argument' do
    expect(DockingStation.new).to respond_to(:docking).with(1).argument
  end

  it 'Throws an error if there is no bike in the dock' do
    expect { DockingStation.new.release_bike }.to raise_error('No bike')
  end

  it "Throws an error if there is a bike already docked" do
    station = DockingStation.new
    station.docking('bike')
    expect { station.docking('bike2') }.to_not raise_error('Station full')
  end

  it "Throws an error if there is a bike already docked" do
    station = DockingStation.new
    20.times { station.docking('bike') }
    expect { station.docking('bike2') }.to raise_error('Station full')
  end

end
