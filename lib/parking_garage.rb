class Car
  attr_accessor :name

  def initialize(name)
    @name = name # license plate # would be better, but name will work
    @accessible = false
  end

  def is_accessible?
    @accessible
  end

  def enter_garage
    # attempt to enter garage, be directed to ticket booth
  end

  def park
    # occupy an empty parking spot in the garage
  end

  def exit_garage
    # un-occupy a parking spot in the garage and be directed to ticket booth
  end
end

class AccessibleCar
  def initialize(name)
    super
    @accessible = true
  end
end

class TicketBooth
  attr_accessor :ticket

  def initialize
  end

  def issue_ticket # when car enters, give ticket timestamped now
    @ticket = Ticket.new(Time.now)
    # needs a check first to see if spots are available
  end

  def take_ticket # car inserts ticket to leave
    @ticket.checkout(Time.now)
  end

  def calculate_total_due # ticket.elapsed_time * garage.fee ($2/hr, free for 15 mins)
  end

  def lost_ticket # max fee
  end

  def take_payment # clear fee
  end

  def raise_gate # when fee == 0, raise gate so car can leave
  end
end

class Ticket
  attr_accessor :timestamp_enter, :timestamp_exit
  def initialize(timestamp_enter)
    @timestamp_enter = timestamp_enter
  end

  def checkout(timestamp_exit)
    @timestamp_exit = timestamp_exit
  end

  def elapsed_time
    @timestamp_exit - @timestamp_enter
  end
end


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

  def accessible_available?
    # if accessible spots are not both occupied, return true
  end
end

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
