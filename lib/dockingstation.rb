class DockingStation
  attr_reader :bikes

def initialize
  @bikes = []
end

  def release_bike
    if @bikes.empty?
      fail 'No bike'
    else
      @bikes.pop
    end
  end

  def docking(bike)
    if @bikes.length < 20
      @bikes.push(bike)
    else
      fail 'Station full'
    end
  end

end

class Bike
  def working?
    true
  end

end
