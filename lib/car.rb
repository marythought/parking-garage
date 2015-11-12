class Car
  attr_accessor :name

  def initialize(name)
    @name = name # license plate # would be better, but name will work
    @accessible = false
    @parked = nil
  end

  def is_accessible?
    @accessible
  end

  def enter_garage
    # attempt to enter garage, be directed to ticket booth
  end

  def park
    spot = garage.get_open_spot
    spot.occupied = true
    @parked = spot
    # occupy an empty parking spot in the garage
  end

  def exit_garage
    # un-occupy a parking spot in the garage and be directed to ticket booth
  end
end

class AccessibleCar < Car
  def initialize(name)
    super
    @accessible = true
  end
end
