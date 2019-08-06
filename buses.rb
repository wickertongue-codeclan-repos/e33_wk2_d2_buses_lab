class Bus

  attr_reader :route_number, :destination
  attr_accessor :passengers

  def initialize(route_number, destination)
    @route_number = route_number
    @destination = destination
    @passengers = []
  end

  def drive_sound()
    return "Brum brum"
  end


  def number_of_passengers_on_bus()
    @passengers.count()
  end

  def pick_up_passenger(person)
    binding.pry
    @passengers.push(person)
    p @passengers
  end

  def drop_off_passenger(person)
    for passenger in @passengers
      if person == passenger
        passenger.unshift
      else
        nil
      end
    end
  end

  def drop_off_passenger(person)
    @passengers.unshift(person)
  end

  def empty_bus
    @passengers.clear
  end

end
