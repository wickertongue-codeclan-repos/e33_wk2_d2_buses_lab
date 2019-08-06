require("pry")
require("minitest/autorun")
require("minitest/pride")
require_relative("../buses")
require_relative("../bus_stop")
require_relative("../person")

class BusesTest < MiniTest::Test

  def setup
    @person = Person.new("Kevin", 37)
    @bus_stop = BusStop.new("Little France")
    @bus = Bus.new(14, "Castle Terrace")
  end

  # def test_bus_has_route_number
  #   assert_equal(14, @bus.route_number())
  # end
  #
  # def test_bus_has_destination
  #   assert_equal("Castle Terrace", @bus.destination())
  # end
  #
  # def test_bus_drive_sound
  #   assert_equal("Brum brum", @bus.drive_sound())
  # end
  #
  # def test_number_of_passengers_on_bus__start_empty
  #   assert_equal(0, @bus.number_of_passengers_on_bus())
  # end
  #
  # def test_pick_up_passenger
  #   assert_equal(1, @bus.pick_up_passenger(@person).count)
  # end
  #
  # def test_drop_off_passenger
  #   assert_equal(0, @bus.drop_off_passenger(@person).count)
  # end
  #
  # def test_empty_bus
  #   assert_equal([], @bus.empty_bus)
  # end

  def test_pick_up_from
    @bus.pick_up_from(@bus_stop)

    expected = 1
    actual = @bus.number_of_passengers_on_bus

    assert_equal(expected, actual)
  end

end
