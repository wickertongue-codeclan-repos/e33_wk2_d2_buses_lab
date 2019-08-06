class Bus

  attr_reader :route_number, :destination
  attr_accessor :passenger

def initialize(route_number, destination, passenger)
  @route_number = route_number
  @destination = destination
  @passenger = passenger
end

def drive_sound()
  return "Brum brum"
end

end
