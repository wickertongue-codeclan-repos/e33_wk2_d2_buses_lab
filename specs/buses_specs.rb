require("pry")
require("minitest/autorun")
require("minitest/pride")
require_relative("../buses")
require_relative("../person")

class BusesTest < MiniTest::Test

  def setup
    @person = Person.new("Kevin", 37)
    @bus1 = Bus.new(14, "Castle Terrace")
  end

  def test_bus_has_route_number
    assert_equal(14, @bus1.route_number())
  end

  def test_bus_has_destination
    assert_equal("Castle Terrace", @bus1.destination())
  end

  def test_bus_drive_sound
    assert_equal("Brum brum", @bus1.drive_sound())
  end

  def test_number_of_passengers_on_bus__start_empty
    assert_equal(0, @bus1.number_of_passengers_on_bus())
  end

  def test_pick_up_passenger
    assert_equal(1, @bus1.pick_up_passenger(@person).count)
  end
  
  def test_drop_off_passenger
    assert_equal(0, @bus1.drop_off_passenger(@person).count)
  end

  def test_empty_bus
    assert_equal([], @bus1.empty_bus)
  end

end
