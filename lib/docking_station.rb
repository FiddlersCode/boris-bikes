require 'bike'

class DockingStation
  attr_accessor :bike

  # def bike
  #   @bike
  # end
  # def initialize
  #    @bike = Bike.new
  #    release_bike
  # end

  def release_bike
    fail 'No bikes available' unless @bike
     @bike
  end

  def dock(bike)
    fail 'Docking station full' if @bike
     @bike = bike
  end
end
