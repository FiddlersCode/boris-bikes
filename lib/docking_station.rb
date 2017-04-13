require_relative 'bike'

class DockingStation
  attr_accessor :bike

  # def bike
  #   @bike
  # end
  def initialize
    @bike = Bike.new
  end

  def release_bike
    fail 'No bikes available' unless @bike
    @bike
  end

  def dock(bike)
    @bike = bike
  end
end

=begin
class Bike
  def working?
    true

    end
end
=end
