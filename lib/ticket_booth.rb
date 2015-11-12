require 'ticket'

class TicketBooth
  # include 'module' ('drivable')
  attr_accessor :tickets

  def initialize
    @tickets = []
  end

  def issue_ticket # when car enters, give ticket timestamped now
    ticket = Ticket.new(Time.now)
    @tickets << ticket
    ticket
    # needs a check first to see if spots are available
  end

  def take_ticket(ticket) # car inserts ticket to leave
    ticket.checkout(Time.now)
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
