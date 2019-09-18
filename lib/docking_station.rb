require_relative 'bike'

class DockingStation

  def release_bike
    fail 'No bikes available' unless @bike
    @bike
  end

  attr_reader :bike
  # def bike
  #   @bike
  # end

  # attr writer
  def dock(bike)
    @bike = bike
  end

end
