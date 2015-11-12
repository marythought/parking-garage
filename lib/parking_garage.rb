require 'parking_spot'
require 'car' # only if garage needs to know about/track cars

class Garage
  attr_accessor :fee

  def initialize
    @full = false
    @fee = 2
    @spots = []
    @accessible_spots = []
  end

  def open
    20.times do |spot|
      @spots << ParkingSpot.new(spot)
    end
    2.times do |spot|
      @accessible_spots <<AccessibleSpot.new(spot)
    end
    puts "garage open!"
  end

  def full?
    # if less than 20 spots are occupied, return false
  end

  def spot_available?(id)
    !@spots[id].occupied?
  end

  def get_open_spot
    # first available spot in @spots where @occupied == false
  end

  def park_car
    spot = get_open_spot # ???
    # assign a car to the spot and mark the spot as occupied
  end

  def accessible_available?
    # if accessible spots are not both occupied, return true
  end
end
