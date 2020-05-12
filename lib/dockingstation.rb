class DockingStation
  attr_reader :bike

  def release_bike
    if @bike == nil
      fail 'No bike'
    else
      @bike
    end
  end

  def docking(bike)
    if @bike == nil
      @bike = bike
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
