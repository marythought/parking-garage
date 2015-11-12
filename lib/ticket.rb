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
