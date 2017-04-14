require_relative   'bike'

class DockingStation
  attr_accessor :bikes

  # def bike
  #   @bikes
  # end
  def initialize
     @bikes = []
  end

  def release_bike
    fail 'No bikes available' unless @bikes
     @bikes.pop
  end

  def dock(bike)
    fail 'Docking station full' if full?
     @bikes << bike
     bike
  end

private
  def full?
    @bikes.count >= 20
  end

end
