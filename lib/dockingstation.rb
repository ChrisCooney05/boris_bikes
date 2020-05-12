class DockingStation

  def release_bike
    Bike.new
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
