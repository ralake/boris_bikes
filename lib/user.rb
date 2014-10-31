class User

  def initialize(bike = nil)
    @bike = bike
  end

  def has_bike?
    !@bike.nil?
  end

  def have_accident!
    @bike.break!
  end

  def lose_bike!
    remove_bike
  end

  def remove_bike
    @bike = nil
  end

  def rent(bike, station)
    @bike = station.release(bike)
  end

  def return(bike, station)
    station.dock(bike)
    remove_bike
  end

end