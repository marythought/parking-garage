class ParkingSpot
  attr_accessor :id, :occupied

  def initialize(id)
    @id = id
    @occupied = false
  end

  def occupied?
    @occupied
  end
end

class AccessibleSpot < ParkingSpot
  attr_accessor :id

  def initialize(id)
    @id = id
    @occupied = false
    @accessible = true
  end
end
