require_relative 'bike'

class DockingStation

  def release_bike
    Bike.new
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
