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
    @bike = bike
  end

end

class Bike
  def working?
    true
  end

end
