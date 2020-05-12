require 'dockingstation'

describe Bike do
  it 'responds to working?' do
    expect(Bike.new).to respond_to(:working?)
  end

  it 'returns true for working bike' do
    expect(Bike.new.working?).to eq true
  end

end
