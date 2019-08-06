class Bus

  attr_reader :route_number, :destination
  attr_accessor :passengers

  def initialize(route_number, destination)
    @route_number = route_number
    @destination = destination
    @passengers = []
  end

  # def drive_sound()
  #   return "Brum brum"
  # end
  #
  # def number_of_passengers_on_bus()
  #   @passengers.count()
  # end
  #
  # def pick_up_passenger(person)
  #   @passengers.push(person)
  # end
  #
  # def drop_off_passenger(person)
  #   for passenger in @passengers
  #     if person == passenger
  #       passenger.unshift
  #     else
  #       nil
  #     end
  #   end
  # end
  #
  # def drop_off_passenger(person)
  #   @passengers.unshift(person)
  # end
  #
  # def empty_bus
  #   @passengers.clear
  # end

  def pick_up_from(stop_name)
    pick_up_passenger()
  end



end

__END__


Now imagine that our bus is travelling along the route. For now we will imagine that there is only one bus that goes on this route, so every passenger waiting at each stop wants to get on the bus.

Try writing a method that the bus would call, to collect all of the passengers from a stop. This might look like bus.pick_up_from_stop(stop1). This should take all of the passengers waiting in line at the stop, and put them inside of the bus. So the stop will now have nobody in the queue, and the number of people on the bus will increase by however many people the stop had at it.
